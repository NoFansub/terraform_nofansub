resource "aws_vpc" "esgi_src1" {
    cidr_block = "10.0.0.0/16"
    tags {
        Name = "lab_esgi_src1"
    }
}

