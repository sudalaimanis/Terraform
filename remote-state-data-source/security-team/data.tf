data "terraform_remote_state" "network" {
    backend = "s3"
    config = {
        bucket = "terraform-remotestatedatasource-mani"
        key = "terraform/state/networking.tfstate"
        region = "us-east-1"
    }
}
