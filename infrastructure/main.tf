terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.62.0"
    }
  }
  required_version = "~> 1.7.3"

  backend "s3" {
    bucket = "my-aws-state-bucket"
    key    = "magdalene-church-app/terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Service      = "Magdalene Church App"
      Service_Name = "magdalene-church-app"
      Environment  = var.env
    }
  }
}

module "frontend" {
  source = "./modules/frontend"
  env    = var.env
}