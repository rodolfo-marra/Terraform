provider "aws" {
  region = "us-east-1"
}

resource "aws_sqs_queue" "queue" {
  name  = "rody_queue"
}