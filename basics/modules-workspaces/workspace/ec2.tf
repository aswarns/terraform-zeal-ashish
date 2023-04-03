resource "aws_instance" "prod" {
  ami           = "ami-00c39f71452c08778"
  instance_type = lookup(var.instance_type, terraform.workspace)
}


/*
default - t1.micro
dev - t2.micro
prod - t2.nano
*/
variable "instance_type" {
  type = map(any)

  default = {
    default = "t1.micro"
    dev     = "t1.micro"
    prod    = "t2.micro"
  }

}

