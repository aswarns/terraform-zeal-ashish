terraform {
  backend "s3" {
    bucket = "terraform-stacksimplify-ashish"
    key    = "workspaces/terraform.tfstate"
    region = "us-east-1"
  }
}
