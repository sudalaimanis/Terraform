provider "aws" {
    region = "ap-south-1"
  
}




/*variable "my-list" {
  type = list(string)
#  default = ["item1", "item2", "item3"]
}

output "my-list-output" {
  value = var.my-list
}*/

variable "my-set" {
  type = set(string)
  #default = ["item1", "item2", "item3"]
}

output "my-set-output" {
  value = var.my-set
}