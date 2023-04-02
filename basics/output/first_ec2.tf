provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-00c39f71452c08778"
  instance_type = var.instance_type
  
  /*
  count = 3

    tags = {
    Name = count.index
  }
  */
}




resource "aws_eip" "lb" {
  vpc = true
}


resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.web.id
  allocation_id = aws_eip.lb.id
}


resource "aws_s3_bucket" "b" {
  bucket = "my-terraform-test-bucket-ashish"
}

