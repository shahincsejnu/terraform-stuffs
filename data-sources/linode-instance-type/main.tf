terraform {
    required_providers {
        linode = {
            source = "linode/linode"
        }
    }
    required_version = ">= 0.13"
}

provider "linode" {
    token = var.token
}

variable token {}

data "linode_instance_type" "demo-test" {
    id = "g6-standard-1"
}