#VPC
resource "aws_vpc" "esgi_src1" {
  cidr_block = "${var.vpc_cidr_block}"

  tags {
    Name = "${var.vpc_tag_name}"
  }
}

#SUBNET
resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.esgi_src1.id}"
  cidr_block = "${var.subnet_cidr_block}"
  availability_zone = "${var.subnet_availability_zone}"

  tags {
    Name = "${var.subnet_name}"
  }
}

#IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.esgi_src1.id}"

  tags = {
    Name = "${var.igw_name}"
  }
}

#ROUTE TABLE
resource "aws_route_table" "public_route" {
  vpc_id = "${aws_vpc.esgi_src1.id}"

  route {
    cidr_block = "${var.route_table_cidr_block}"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags = {
    Name = "${var.route_table_name}"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.main.id}"
  route_table_id = "${aws_route_table.public_route.id}"
}