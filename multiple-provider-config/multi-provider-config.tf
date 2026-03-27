provider "aws" {
    alias = "singapore"
    region = "ap-southeast-1"
}

provider "aws" {
    alias = "mumbai"
    region = "ap-south-1"
}

provider "aws" {
    alias = "usa"
    region = "us-east-1"
}

resource "aws_security_group" "sg1"{
    name = "prod_firewall"
    provider = aws.mumbai
    tags = {
        Name = "prod_firewall"
    }
}

resource "aws_security_group" "sg2"{
    name = "dev_firewall"
    provider = aws.singapore
    tags = {
        Name = "dev_firewall"
    }
}