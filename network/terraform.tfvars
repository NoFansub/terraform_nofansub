#Nom terraform.tfvars obligatoire
# Main.tf
region = "eu-west-1"
instance_name = "amzn2-ami-hvm-2.0.*-x86_64-gp2*"
owners = "137112412989"
main_most_recent = true
main_filter_name = "name"

#vpc.tf
#VPC
vpc_cidr_block = "10.0.0.0/16"
vpc_tag_name = "lab_esgi_src1"

#SUBNET

subnet_cidr_block = "10.0.1.0/24"
subnet_availability_zone = "eu-west-1a"
subnet_name = "subnet_esgi_src1"

#IGW
igw_name = "igw_esgi_SRC3"

#ROUTE TABLE

route_table_cidr_block = "0.0.0.0/0"
route_table_name = "Public_route_table"

#DATASOURCE
datasource_owners = "137112412989"
datasource_filter_name = "name"
datasource_filter_name_value = "amzn2-ami-hvm-2.0.*-x86_64-gp2"
datasource_most_recent = true

