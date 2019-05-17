resource "aws_security_group" "allow_ssh_everywhere" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = "${aws_vpc.esgi_src1.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.aws_linux.id}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.main.id}"
  associate_public_ip_address = "true"
  user_data = "${file("user_data.sh")}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh_everywhere.id}"]

  tags = {
    Name = "HelloWorld"
  }
}