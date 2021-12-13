resource "aws_security_group" "allow_ssh" {
  name   = "tenable_cs_demo_sg_ssh"
  vpc_id = aws_vpc.tenable_cs_demo_vpc.id
  tags   = var.default_tags

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["2001:db8::/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["2001:db8::/32"]
  }
}
