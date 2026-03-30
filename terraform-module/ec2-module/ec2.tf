provider "aws" {
    region = "us-east-1"
}

module "ec2-instance" {
source  = "terraform-aws-modules/ec2-instance/aws"
version = "6.4.0"
subnet_id = "subnet-0ff23c4c3617867ce"
}

