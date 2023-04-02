
resource "aws_instance" "dev" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t1.micro"
  #count         = var.istest == false ? 1 : 0
  count         = var.istest == false ? 0 : 1
}

variable "istest" {}

resource "aws_instance" "prod" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  count         = var.istest == true ? 3 : 0
}
