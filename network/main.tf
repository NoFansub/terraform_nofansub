provider "aws" {
  region     = "eu-west-1"
}

data "aws_ami" "aws_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.*-x86_64-gp2*"]
  }

  owners = ["137112412989"] # Canonical
}