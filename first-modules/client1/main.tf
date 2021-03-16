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

module "app-deployment" {
    source = "../modules/app-deployment"

    # variables specific to this deployment
    authorized_keys = var.authorized_keys
    root_pass = var.root_pass


    # variables specific to the servers
    web_label = "client1-web"
    db_label = "client1-db"
}