aprovider "aws" {
 region = "eu-central-1"
 profile = "Deep"
 }
 resource "aws_instance" "terra_instance" {
  ami           = ami-0b1deee75235aa4bb
  instance_type = "t3.micro"

  }
resource “aws_s3_bucket” “bucket” {
   Bucket = “deep7-4pm-sun”
    acl        = “public-read”
    tags = {
    Name    = “My bucket”
    Environment = “Dev”
  }
}
