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

variable "token" {}

data "linode_account" "sahadat_account" {} 

# will store the data in the terraform.tfstate


# print here as output
output "test" {
    value = data.linode_account.sahadat_account
}