provider "aws" {
  region = "ap-south-1"
}

variable "instance_type" {
  
}
data "aws_ec2_instance_type" "example"{
    instance_type = var.instance_type
}

output "free_tier" {
  value = data.aws_ec2_instance_type.example.*
}

resource "aws_instance" "example" {
    ami = "ami-0f559c3642608c138"
    instance_type = var.instance_type

    lifecycle {
      precondition {
        condition = data.aws_ec2_instance_type.example.free_tier_eligible
        error_message = "Only launch free tier eligible instances"
    }
    postcondition{
        condition = self.public_ip != ""
        error_message = "EC2 must have public IP"
    }

}
}