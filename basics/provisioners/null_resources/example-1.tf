/*
provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
  vpc        = true
  depends_on = [null_resource.healtch_check]
}

resource "null_resource" "healtch_check" {

  provisioner  "local-exec" {
    command = "curl https://google.com"
  }
}
*/