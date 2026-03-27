terraform {
    backend "s3" {
        bucket = "terraform-remotestatedatasource-mani"
        key = "terraform/state/networking.tfstate"
        region = "us-east-1"
    }
}