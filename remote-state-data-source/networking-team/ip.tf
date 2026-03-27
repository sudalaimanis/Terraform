provider "aws"{
    region = "us-east-1"
}

resource "aws_eip" "ip" {
    domain = "vpc"
}

output "ip"{
    value = aws_eip.ip.public_ip
}