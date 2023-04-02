variable "vpn_ip" {
  default = "1.1.1.1/32"
}

variable "instance_type" {
  default = "t2.micro"
  type = string
}

variable "aws_elb_name" {
  default = "foobar-terraform-elb"
  type = string
}

variable "az" {
  default = ["us-east-1b"]
  type = list
}

variable "timeout" {
  default = "87"
  type = number
}