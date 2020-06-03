# terraform_test_task

terraform: 
1) instantiate a virtual server in amazon cloud EC2 of type t2.micro 
2) Run RDS free tier instance (MySQL) with preliminary database (taras_db)
3) Get connected from t2.micro instance to RDS instance database and do any actions with it (create table in database)
4) Upload the code to github public repository

---

Preliminary steps:

0) install terraform (linux box under Oracle Virtualbox environment): 

a) wget https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip
b) unzip terraform_0.12.26_linux_amd64.zip
c) mkdir ~./terraform_distrib
d) echo 'export PATH=$PATH:/home/taras/terraform_distrib' >> ~/.bashrc && source .bashrc

1) Create t2.micro instance manually in amazon EC2  console, create AMI (amazon machine image) using the launched instance
2) Create a fresh key pair, download its private part to your virtual linux server
3) Login t2.micro instance using the priavte key
4) Install MySQL client


How to run:

0) mkdir ~./terraform_test_task && cd ~./terraform_test_task
1) terraform init
2) terraform apply
3) enjoy! :)

PS private key is eliminated from this repository due to security concerns


