module "myec2" {
  source        = "../modules/modules-ec2/"
  instance_type = "t1.micro"
}

resource "aws_instance" "new_ec2" {
  ami                    = "ami-00c39f71452c08778"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.myec2.ec2_sg_id, module.myec2.elb_sg_id]
}