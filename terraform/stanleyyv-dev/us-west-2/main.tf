terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.28.0"
    }
  }
  backend "s3" {
    bucket = "stanleyyv-dev-terraform-state-us-west-2"
    key    = "terraform/state/us-west-2/terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region              = "us-west-2"
  allowed_account_ids = ["629011059010"]
}


