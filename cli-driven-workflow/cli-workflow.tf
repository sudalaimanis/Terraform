terraform { 
  cloud { 
    
    organization = "demo-organizations" 

    workspaces { 
      name = "cli-workflow" 
    } 
  } 
}

provider "aws" {
    region = "us-east-1"
}
resource "aws_security_group" "example"{
    name = "Dev-SG-28"
    tags = {
        Name = "Dev-SG-28"
        Environment = "Development"
        Team        = "DevOps"
    }
}