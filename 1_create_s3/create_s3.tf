provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "ssumit_bucket" {
  bucket = "sddevopsbucket"
}

