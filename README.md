# terraform_test_task

terraform: 
1) instantiate a virtual server in amazon cloud EC2 of type t2.micro 
2) Run RDS free tier instance (MySQL) with preliminary database (taras_db)
3) Get connected from t2.micro instance to RDS instance database and do any actions with it (create table in database)
4) Upload the code to github public repository
---

Preliminary steps:

0) install terraform: 
a) wget https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip
b) unzip terraform_0.12.26_linux_amd64.zip
c) mkdir ~./terraform


How to run:

0) cd ~./terraform
1) terraform init
2) terraform apply


