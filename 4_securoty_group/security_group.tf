provider "aws" {
  region = "us-west-2"
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