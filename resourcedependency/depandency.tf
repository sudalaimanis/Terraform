provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "example" {
    ami = "ami-0f559c3642608c138"
    instance_type = "t2.micro"
    depends_on = [ aws_s3_bucket.name ]
}

resource "aws_s3_bucket" "name" {
    bucket = "sudalaimani-test-india-thoothukudi-ltd"
    
}