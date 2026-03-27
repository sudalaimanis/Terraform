provider "aws" {
    region = "us-east-1"
}

import {
    to = aws_security_group.mysg
    id = "sg-048720e3d1210914a"
}