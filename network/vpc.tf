resource "aws_vpc" "esgi_src1" {
    cidr_block  = "10.0.0.0/16"
    tags {
        Name = "lab_esgi_src1"
    }
}
resource "aws_subnet" "subnet_esgi_src1" {
    vpc_id = "${aws_vpc.esgi_src1.id}"
    cidr_block  = "10.0.0.0/16"
    availability_zone = "eu-west-1a"
    tags {
        Name = "subnet_esgi_src1"
    }
}
resource "aws_internet_gateway" "gw_esgi_src1" {
  vpc_id = "${aws_vpc.esgi_src1.id}"
  tags = {
    Name = "gateway_esgi_src1"
  }
}

resource "aws_route_table" "route_table_esgi_scr1" {
  vpc_id = "${aws_vpc.esgi_src1.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw_esgi_src1.id}"
  }
  tags = {
    Name = "router_esgi_src1"
  }
}

resource "aws_route_table_association" "association_esgi_src1" {
  subnet_id      = "${aws_subnet.subnet_esgi_src1.id}"
  route_table_id = "${aws_route_table.route_table_esgi_scr1.id}"
}

