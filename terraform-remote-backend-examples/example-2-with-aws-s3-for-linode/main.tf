terraform {
  required_providers {
    linode = {
      source = "terraform-providers/linode"
    }
  }
  required_version = ">= 0.13"
}

provider "linode" {
  token = var.token
}

terraform {
  backend "s3" {
    bucket = "kubeform-remote-backend"
    key = "kubeform/terraform.tfstate"
    region = "us-east-2"
    access_key = ""
    secret_key = ""
  }
}

resource "linode_instance" "kubeform-instance" {
  region = "us-east"
  image = "linode/ubuntu18.04"
  label = "kubeform-demo"
  root_pass = "demo-test"
}

variable "token" {}