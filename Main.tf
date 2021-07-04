terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}
 resource "aws_instance" "terra_instance" {
  ami           = ami-0b1deee75235aa4bb
  instance_type = "t3.micro"
  }
resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-test1-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
