
terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-22032026-mani-india"
    key    = "terraform/state/production.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
