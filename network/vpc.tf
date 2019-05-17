resource "aws_vpc" "esgi_src1" {
  cidr_block = "10.0.0.0/16"

  tags {
    Name = "lab_esgi_src1"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.esgi_src1.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-west-1a"

  tags {
    Name = "subnet_esgi_src1"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.esgi_src1.id}"

  tags = {
    Name = "igw_esgi_SRC3"
  }
}

resource "aws_route_table" "public_route" {
  vpc_id = "${aws_vpc.esgi_src1.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags = {
    Name = "Public_route_table"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.main.id}"
  route_table_id = "${aws_route_table.public_route.id}"
}