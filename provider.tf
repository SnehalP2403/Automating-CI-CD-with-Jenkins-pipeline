terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.14.0"
    }
  }
  backend "s3" {
    bucket = "upgrad-c44"
    key    = "files/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "c43"
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
