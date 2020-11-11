provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "ca-central-1"
  alias  = "canada"
}

resource aws_s3_bucket "us_bucket" {
  bucket = "rodolfomarra-us-bucket"
}

resource aws_s3_bucket "ca_bucket" {
  bucket   = "rodolfomarra-ca-bucket"
  provider = aws.canada
}