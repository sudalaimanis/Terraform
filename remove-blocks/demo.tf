provider "aws" {
    region = "us-east-1"
}
/*
resource "local_file" "foo"{
    content = "hello from terraform removed blocks"
    filename = "${path.module}/foo.txt"
} */

removed {
  from = local_file.foo
  lifecycle {
    destroy = false
  }
}