provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "sd_bucket_2" {
    bucket = "sd_bucket_2"
    acl = "private"

    versioning {
        enabled = true
        mfa_delete = false
    }
}

