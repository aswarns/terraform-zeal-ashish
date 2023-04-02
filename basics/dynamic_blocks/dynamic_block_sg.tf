
resource "aws_security_group" "sg_group" {
  name        = "dynamic-sg"
  description = "common ingress ports"

  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    }

    dynamic "egress" {
      for_each = var.sg_ports
      content {
        from_port   = egress.value
        to_port     = egress.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

    }
  
}