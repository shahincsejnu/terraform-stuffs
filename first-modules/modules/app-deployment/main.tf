terraform {
    required_providers {
        linode = {
            source = "terraform-providers/linode"
        }
    }
    required_version = ">= 0.13"
}

# Web Server
resource "linode_instance" "terraform-web" {
        image = "linode/ubuntu18.04"
        label = var.web_label
        group = "Terraform-Modules"
        region = "us-central"
        type = "g6-standard-1"
        authorized_keys = var.authorized_keys
        root_pass = var.root_pass
}

# Database Server
resource "linode_instance" "terraform-db" {
        image = "linode/ubuntu18.04"
        label = var.db_label
        group = "Terraform-Modules"
        region = "us-central"
        type = "g6-standard-1"
        authorized_keys = var.authorized_keys
        root_pass = var.root_pass
}