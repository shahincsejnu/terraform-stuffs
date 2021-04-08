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

resource "linode_object_storage_bucket" "demo" {
  cluster = "us-east-1"
  label = "demo-kubeform"
}

variable "token" {}