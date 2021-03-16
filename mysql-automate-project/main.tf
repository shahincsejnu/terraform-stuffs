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

resource "linode_instance" "mysql-demo-mehedi-0" {
    label = "mysql-demo-0"
    image = "linode/ubuntu20.04"
    region = "us-central"
    type = "g6-standard-1"
    root_pass = var.root_pass
    authorized_keys = [var.ssh_key]

    connection {
        type = "ssh"
        host = self.ip_address
        user = "root"
        password = var.root_pass
    }

    #provisioner "file" {
     #   source = "demo.txt"
     #   destination = "/root/oka.txt"
    #}

    provisioner "remote-exec" {
        inline = [
            "sudo apt-get update",
            "sudo apt-get install mysql-server -y"
        ]
    }
}

resource "linode_instance" "mysql-demo-mehedi-1" {
    label = "mysql-demo-1"
    image = "linode/ubuntu20.04"
    region = "us-central"
    type = "g6-standard-1"
    root_pass = var.root_pass
    authorized_keys = [var.ssh_key]

    connection {
        type = "ssh"
        host = self.ip_address
        user = "root"
        password = var.root_pass
    }

    #provisioner "file" {
     #   source = "demo.txt"
     #   destination = "/root/oka.txt"
    #}

    provisioner "remote-exec" {
        inline = [
            "sudo apt-get update",
            "sudo apt-get install mysql-server -y"
        ]
    }
}

resource "linode_instance" "mysql-demo-mehedi-2" {
    label = "mysql-demo-2"
    image = "linode/ubuntu20.04"
    region = "us-central"
    type = "g6-standard-1"
    root_pass = var.root_pass
    authorized_keys = [var.ssh_key]

    connection {
        type = "ssh"
        host = self.ip_address
        user = "root"
        password = var.root_pass
    }

    #provisioner "file" {
     #   source = "demo.txt"
     #   destination = "/root/oka.txt"
    #}

    provisioner "remote-exec" {
        inline = [
            "sudo apt-get update",
            "sudo apt-get install mysql-server -y"
        ]
    }
}