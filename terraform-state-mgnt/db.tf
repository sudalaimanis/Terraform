provider "aws" {
    region = "us-east-1"
}

resource "aws_db_instance" "dev-db" {
    allocated_storage  = 10
    db_name            = "manidb"
    engine             = "mysql"
    engine_version     = "8.0"
    instance_class     = "db.t3.micro"
    username           = "mani"
    password           = file("outside-folder/pass.txt")
    parameter_group_name = "default.mysql8.0"
    skip_final_snapshot = true

}