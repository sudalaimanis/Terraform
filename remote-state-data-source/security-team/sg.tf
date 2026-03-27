provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "example"{
    name = "example-security-group"
    tags = {
        Name = "example-security-group"
    }
}

resource "aws_security_group_rule" "example"{
    type              = "ingress"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    security_group_id = aws_security_group.example.id
    cidr_blocks       = ["${data.terraform_remote_state.network.outputs.ip}/32"]
}