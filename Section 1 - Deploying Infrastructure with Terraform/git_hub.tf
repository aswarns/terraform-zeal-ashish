terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.18.3"
    }
  }
}

provider "github" {

}

/*
resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

}
*/