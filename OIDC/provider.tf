terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.87.0"
    }
  }
backend "s3" {
    bucket = "raff-2025-tf-statefile"
    key = "devops/OIDC/s3.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}