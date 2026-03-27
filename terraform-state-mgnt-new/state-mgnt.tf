provider "aws" {
    region = "us-east-1"
  
}

terraform {
    backend "s3" {
        bucket = "terraform-state-mgnt-sessoion-new-mani"
        key    = "terraform/state/demo.tfstate"
        region = "us-east-1"
    }
}

resource "aws_iam_user" "prod" {
    name = "ssmani-user-01"
}

