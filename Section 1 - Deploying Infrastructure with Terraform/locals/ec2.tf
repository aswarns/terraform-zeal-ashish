
resource "aws_instance" "dev" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t1.micro"
  tags = local.tags
}

resource "aws_instance" "prod" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  tags          = local.tags
}

locals {
  tags = {
    owner    = "SRE team"
    services = "backend supoprt"
  }
}

/*
locals {
    common_tags {
    owner = " dev team"
    services = "development"
  }
}
# 2 locals tags doesnt work
*/