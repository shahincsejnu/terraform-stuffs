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

resource "linode_instance" "demo" {
  region = "us-east"
  image = "linode/ubuntu18.04"
  label = "demo-kubeform-terraform"
  root_pass = "demo-test"
  alerts {
    cpu = 50
  }
}

variable "token" {}