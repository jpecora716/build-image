terraform {
  backend "remote" {
    organization = "pcs-nym"

    workspaces {
      name = "build-image"
    }
  }
}

# Define provider
provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "registry" {
  name                 = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}