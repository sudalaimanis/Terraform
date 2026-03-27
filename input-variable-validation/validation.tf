variable "db_password" {
  type = string


  validation {
    condition = length(var.db_password) >12
    error_message = "DB password must be longer than 12 characters"
  }
}