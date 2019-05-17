#AMI
data "aws_ami" "ami_esgi_src1" {
  most_recent      = true
  owners           = ["137112412989"]
  
  filter {
    name            = "name"
    values          =  [ "amzn2-ami-hvm-2.0.*-x86_64-gp2" ]
  }
}
