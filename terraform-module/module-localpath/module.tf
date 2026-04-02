provider "aws" {
    region = "us-east-1"
}
module "ec2" {
    source = "./module/ec2"
}
module "sg" {
    source = "./module/sg"
}