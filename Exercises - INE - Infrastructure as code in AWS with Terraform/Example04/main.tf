provider "aws" {
  region = "us-east-1"
}

locals {
  bucket_prefix = "rodolfosoares"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${local.bucket_prefix}-myfirst-bucket"
}