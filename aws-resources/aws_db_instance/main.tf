terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}

provider "aws" {
    access_key = var.access_key
    region = "us-east-2"
    secret_key = var.secret_key
}

variable "access_key" {}
variable "secret_key" {}

resource "aws_db_instance" "aws-db" {
    skip_final_snapshot = "true"
    allocated_storage = 5
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    name = "mydb"
    parameter_group_name = "default.mysql5.7"
    password = var.password
    storage_type = "gp2"
    username = var.username
}

variable "password" {}
variable "username" {}