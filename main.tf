provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "sumit_bucket_1" {
  bucket = "sddevopsbucket"
}

# resource "postgresql_role" "pg_role" {
#   name     = "pg_role_1"
#   login    = true
#   password = "YellowJumpingUnicorn"
# }

resource "aws_s3_bucket" "sd_bucket_2" {
    bucket = "sd_bucket_2"
    acl = "private"

    versioning {
        enabled = true
        mfa_delete = false
    }
}


resource "aws_security_group" "sd_security_group" {
  name = "allow_tls"
  ingress {
    protocol = "tcp"
    from_port = 443
    to_port = 443
    cidr_blocks = ["10.0.0.0/16", "11.0.0.0/16"]
  }
}