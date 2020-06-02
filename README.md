# terraform_test_task

terraform: 
1) instantiate a virtual server in amazon cloud EC2 of type t2.micro 
2) Run RDS free tier instance (MySQL) with preliminary database (taras_db)
3) Get connected from t2.micro instance to RDS instance database and do any actions with it (create table in database)
4) Upload the code to github public repository
---

Preliminary steps:

0) install terraform: 
0.1 wget https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip
0.2 unzip terraform_0.12.26_linux_amd64.zip
0.3 mkdir ~./terraform_distrib
0.4 echo 'export PATH=$PATH:/home/taras/terraform_distrib' >> ~/.bashrc && source .bashrc


How to run:

0) mkdir ~./terraform_test_task && cd ~./terraform_test_task
1) terraform init
2) terraform apply
3) enjoy! :)


