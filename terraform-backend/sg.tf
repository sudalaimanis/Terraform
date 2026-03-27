provider "aws"{
    region = "us-east-1"
}
resource "aws_security_group" "prod-firewall"{
    name = "prod-firewall"
    tags = {
        Environment = "Production"
        Team        = "DevOps"
    }
}