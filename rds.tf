provider "aws" {
  access_key = "AKIAXIJPXRGVVSBZBZ6F"
  secret_key = "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"
  region     = "us-east-2"
}


variable "db_username" {
  default = "admin"
}

variable "db_username_pass" {
  default = "21WqSaXz"
}


resource "aws_db_instance" "my_test_mysql" {
  allocated_storage           = 20
  storage_type                = "gp2"
  engine                      = "mysql"
  engine_version              = "8.0.17"
  instance_class              = "db.t2.micro"
  username                    = "${var.db_username}"
  password                    = "${var.db_username_pass}"
  name                        = "taras_db"
  publicly_accessible         = true
  parameter_group_name        = "default.mysql8.0"
  db_subnet_group_name        = "default-vpc-925987f9"
  vpc_security_group_ids      = ["sg-0face4424c0216c26"]

  provisioner "local-exec" {
    command = "echo ${aws_db_instance.my_test_mysql.endpoint}"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0a647537666166017"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0face4424c0216c26"]
  connection {
    type     = "ssh"
    user = "ubuntu"
    host = "${aws_instance.example.public_dns}"
    private_key = "${file("~/terraform_test_task/taraspv.pem")}"
    timeout = "10m"
  }


  provisioner "remote-exec" {
    inline = [
      "echo ${aws_db_instance.my_test_mysql.address}",
      "mysql --host=${aws_db_instance.my_test_mysql.address} --port=3306 -u ${var.db_username} --password=${var.db_username_pass} taras_db  -e \"show databases; create table my_table_id (id int); show tables\"",
    ]
  }

}

