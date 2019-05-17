#AMI
data "aws_ami" "ami_esgi_src1" {
  most_recent      = "${var.datasource_most_recent}"
  owners           = ["${var.datasource_owners}"]
  
  filter {
    name            = "${var.datasource_filter_name}"
    values          =  [ "${var.datasource_filter_name_value}" ]
  }
}
