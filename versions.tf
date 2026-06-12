terraform {
  required_version = ">= 1.6.0"

  cloud {
    organization = "am-terraform-lab"

    workspaces {
      name = "terraform-aws-app-am"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}