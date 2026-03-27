provider "local" {
    version = "~> 2.5"
}
/*
variable "password" {
  default = "securepassword"
  sensitive = true
}
resource "local_file" "foo" {
    content  = var.password
    filename = "password.txt"
 }

 */

 resource "local_sensitive_file" "foo" {
    content  = "securepassword"
    filename = "password.txt"
 }

 output "password" {
   value = local_sensitive_file.foo.content
   sensitive = true
 }