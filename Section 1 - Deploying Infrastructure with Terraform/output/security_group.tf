resource "aws_security_group" "allow_tls" {
  name = "created_by_tf"

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]

  }

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]

  }

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]

  }
}