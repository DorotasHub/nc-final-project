terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    }
  }
   backend "s3" {
    bucket = "dimensional-transformers-state-bucket"
    key = "transformers-state/terraform.tfstate"
    region = "eu-west-2"
  }
}


provider "aws" {
  region = var.region
  default_tags {
    tags = {
      name = "Dimensional Transformers Project"
      description = "Totesy Data Management Platform"
      environment = "Dev"
      date = "11/11/24"
    }
  }
}