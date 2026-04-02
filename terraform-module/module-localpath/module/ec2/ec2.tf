resource "aws_instance" "example" {
    ami           = "ami-0c3389a4fa5bddaad"
    instance_type = "t2.micro"
}
