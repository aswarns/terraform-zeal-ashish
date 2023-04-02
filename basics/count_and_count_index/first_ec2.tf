provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-00c39f71452c08778"
  instance_type = var.instance_type

  count = 5

  tags = {
    #Name = count.index
    Name = var.aws_ec2_custom_names[count.index]
  }
}

variable "aws_ec2_custom_names" {
  type    = list(any)
  default = ["prod", "qa", "dev", "stage", "uat"]
}