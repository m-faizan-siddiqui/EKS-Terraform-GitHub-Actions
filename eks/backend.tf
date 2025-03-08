terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "eks-infra-bucket-1"
    region         = "us-east-1"
    key            = "eks1/terraform.tfstate"
    dynamodb_table = "eks-table"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
