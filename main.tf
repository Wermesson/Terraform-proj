terraform {

  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.44.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.98.0"
    }
  }

  backend "s3" {
    bucket = "terraform-wf-proj"
    key    = "terraform-proj/terraform.tfstate"
    region = "us-east-1"
  }

}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.1"
}

module "s3_bucket" {
  source = "./.terraform/modules/s3-bucket"

  bucket = var.s3_bucket
}