provider "aws" {
  region = "us-east-1"
}

module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-00c39f71452c08778"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0a6a608d79201bc6b"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}