terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "terraform-basic-01-372951851996-demo"

  tags = {
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}
