/* variable "user_names" {
   type = set(string)
   default = ["user1", "user2", "user3"]
 }

 resource "aws_iam_user" "users"{
    for_each = var.user_names
    name = each.value
 } */

 variable "my-map" {
   default = {
     key1 = "value1"
     key2 = "value2"
     key3 = "value3"
   }
 }

 resource "aws_ec2_instance" "web" {
   for_each = var.my-map
   ami = each.value
   instance_type = "t2.micro"

   tags = {
     Name = "WebServer-${each.key}"
   }    
 }