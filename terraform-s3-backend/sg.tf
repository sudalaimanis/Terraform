provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "dev-sg"{
    name = "dev-sg"
    tags = {
        Name = "dev-sg"
    }
}