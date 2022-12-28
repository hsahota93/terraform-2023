terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.12.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = ""
}

resource "github_repository" "terraform-2023" {
  name        = "terraform-2023"
  description = "Codebase for learning Terraform"

  visibility = "public"
}
