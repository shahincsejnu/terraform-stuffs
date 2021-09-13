terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}

variable "access_key" {}
variable "secret_key" {}

provider "aws" {
  access_key = var.access_key
  region = "us-east-2"
  secret_key = var.secret_key
}

terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-kubeform"
    key = "kubeform/example-1/terraform.tfstate"
    region = "us-east-2"
    encrypt = true

  }
}
//terraform {
//  backend "remote" {
//    hostname = ""
//    organization = ""
//    token = ""
//  }
//}

resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-remote-backend-kubeform"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
