# hj_wk7_homework
Terraform configuration for GCP VPC with google provider config, favorite food local file resource, and output of vpc name

Created new repo named "hj_wk7_homework" added .gitignore for terraform and readme.md

Cloned repo in vs studio(git clone https://github.com/hevajack/hj_wk7_homework.git) and cd to hj_wk7_homework.

created “terraform” folder inside "hj_wk7_homework using mkdir command

Cd to terraform folder and created three .tf files named main, provider and outputs

Added google provider to provider.tf declared project id and region. Then tested with terraform init, plan and apply. Success

Added resource local file “favorite_food” to main.tf file declared content(my mothers gumbo is my favorite food” and filename (favorite_food.txt) then terraform plan output error of Error: Inconsistent dependency lock file

Output said to run terraform init -upgrade to correct error. Then ran terraform plan, apply successfully.

Searched terraform registry for gcp vpc example code and chose “https://registry.terraform.io/modules/terraform-google-modules/network/google/latest” 

Copied provision from website  and inserted the 3 required variables of project id, region and subnet.

Copied subnet configuration from (https://github.com/BalericaAI/SEIR-1/blob/main/weekly_lessons/weekc/terraform/lab2/subnet.tf)

Removed resource line and changed name, network and region configurations
Terraform plan output was a error stating Error: Module not installed
│ 
│   on main.tf line 7:
│    7: module "vpc_net_wk7hw" {
│ 
│ This module is not yet installed. Run "terraform init" to install all modules required by
│ this configuration.

Ran terraform init then plan failed because I used underscores instead of hyphens. Corrected then ran plan, apply successfully


On creation of the output block for my vpc name had issues finding the proper syntax to declare the value first try I used : value       = module.vpc_net_wk7hw.vpc.name then received error for unsupported attribute

After comparing the syntax from 8-outputs.tf in stir-i repo against my .tf file I changed it to module.vpc_net_wk7hw.network_name
}
And it was successful
