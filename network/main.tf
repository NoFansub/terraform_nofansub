provider "aws" {
  region     = "${var.region}"
}
data "aws_ami" "aws_linux" {
  most_recent = "${var.main_most_recent}"

  filter {
    name   = "${var.main_filter_name}"
    values = ["${var.instance_name}"]
  }

  owners = ["${var.owners}"] 
}