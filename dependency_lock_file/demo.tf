terraform {
  required_providers {
    local = {
      source  = "hashicorp/aws"
      version = "4.60"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web"{
    instance_type = "t2.micro"
    ami           = "ami-0c55b159cbfafe1f0"
}