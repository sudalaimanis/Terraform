provider "aws"{
    region = "us-east-1"
}

resource "aws_security_group" "payments_db_firewall" {
    name = "db_firewall"
    tags = {
        Name = "db_firewall"
    }
}

moved {
    from = aws_security_group.db_firewall
    to = aws_security_group.payments_db_firewall
}