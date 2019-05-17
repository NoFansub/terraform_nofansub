#MAIN
variable "region" {
    description = "Region for my stack"
#    type = ""
#    default = ""
}

variable "main_most_recent" {
    description = " "
#    type = ""
#    default = ""
}

variable "instance_name" {
    description = "Instance name"
#    type = ""
#    default = ""
}
variable "owners" {
    description = "owners of instance AMI"
#    type = ""
#    default = ""
}
variable "main_filter_name" {
    description = " "
#    type = ""
#    default = ""
}


#VPC
variable "vpc_cidr_block" {
    description = "cidr_block_for_my_vpc"
#    type = ""
#    default = ""
}
variable "vpc_tag_name" {
    description = "tag name for my ..."
#    type = ""
#    default = ""
}
#SUBNET

variable "subnet_cidr_block" {
    description = " "
#    type = ""
#    default = ""
}
variable "subnet_availability_zone" {
    description = " "
#    type = ""
#    default = ""
}
variable "subnet_name" {
    description = " "
#    type = ""
#    default = ""
}

#IGW
variable "igw_name" {
    description = " "
#    type = ""
#    default = ""
}
#ROUTE TABLE
variable "route_table_cidr_block" {
    description = " "
#    type = ""
#    default = ""
}
variable "route_table_name" {
    description = " "
#    type = ""
#    default = ""
}

#Datasource

variable "datasource_owners" {
    description = " "
#    type = ""
#    default = ""
}
variable "datasource_filter_name" {
    description = " "
#    type = ""
#    default = ""
}
variable "datasource_filter_name_value" {
    description = " "
#    type = ""
#    default = ""
}



variable "datasource_most_recent" {
    description = " "
#    type = ""
#    default = ""
}