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

variable "token" {}
variable "root_pass" {}
variable "ssh_key" {}

resource "linode_instance" "mysql-demo-alif-0" {
    label = "demo-label-0"
    image = "linode/ubuntu20.04"
    region = "us-central"
    type = "g6-nanode-1"
    root_pass = var.root_pass
    authorized_keys = [var.ssh_key]

    //provisioner "file" {
      //  source = ""    # need to fill up
        //destination = ""     # need to fill up
    //}

    provisioner "remote-exec" {
        inline = [
            "sudo apt update",
            "sudo apt install mysql",
           // "chmod +x <destination>",      # need to fill up
            //"<destination>",        # need to fill up
        ]
    }
}

resource "linode_instance" "mysql-demo-alif-1" {
    label = "demo-label-1"
    image = "linode/ubuntu20.04"
    region = "us-central"
    type = "g6-nanode-1"
    root_pass = var.root_pass
    authorized_keys = [var.ssh_key]

        //provisioner "file" {
      //  source = ""    # need to fill up
        //destination = ""     # need to fill up
    //}

    provisioner "remote-exec" {
        inline = [
            "sudo apt update",
            "sudo apt install mysql",
           // "chmod +x <destination>",      # need to fill up
            //"<destination>",        # need to fill up
        ]
    }
}

resource "linode_instance" "mysql-demo-alif-2" {
    label = "demo-label-2"
    image = "linode/ubuntu20.04"
    region = "us-central"
    type = "g6-nanode-1"
    root_pass = var.root_pass
    authorized_keys = [var.ssh_key]

        //provisioner "file" {
      //  source = ""    # need to fill up
        //destination = ""     # need to fill up
    //}

    provisioner "remote-exec" {
        inline = [
            "sudo apt update",
            "sudo apt install mysql",
           // "chmod +x <destination>",      # need to fill up
            //"<destination>",        # need to fill up
        ]
    }
}
