resource "aws_security_group" "test" {
    name        = "test-sg"
    description = "Test security group"
    tags = {
        Name = "test-sg"
    }
}
