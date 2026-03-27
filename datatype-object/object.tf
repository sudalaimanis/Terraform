
# map data type example
/*
variable "my-map" {
  type = map(number)
}

output "variable_value" {
  value = var.my-map
}
*/
# object data type example

variable "my-object" {
  type = object({
    name    = string
    age     = number
  })
}

output "object_value" {
  value = var.my-object
}   