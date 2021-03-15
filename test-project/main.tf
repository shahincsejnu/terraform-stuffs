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

resource "linode_instance" "demo-again-by-terraform" {
    label = "demo-label"
    image = "linode/ubuntu20.04"
    region = "us-central"
    type = "g6-nanode-1"
    root_pass = var.root_pass
    authorized_keys = [var.ssh_key]
}

variable "token" {}
variable "root_pass" {}
variable "ssh_key" {}
