provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "rodolfomarra-${count.index}"
  count = 3
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "rodolfomarra-next-bucket"

  depends_on = [aws_s3_bucket.bucket]
}