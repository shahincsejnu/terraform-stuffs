# [Install Terraform](https://www.terraform.io/downloads.html)

- The installation steps in this section are for Linux operating systems. Here used terraform version 0.14.7, you can use present latest version by changing the `0.14.7` with the latest version, [see here](https://www.terraform.io/downloads.html)  


## Create Terraform Directory

- `mkdir ~/terraform`
- `cd ~/terraform`


## Download the following files

* The 64-bit linux `.zip`:
    - `wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip`
  
* The SHA256 checksums file:
    - `wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_SHA256SUMS`

* The checksum signature file:
    - `wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_SHA256SUMS.sig`


## Verify Download

- `gpg --recv-keys 51852D87348FFC4C`
- `gpg --verify terraform*.sig terraform*SHA256SUMS`
- `sha256sum -c terraform*SHA256SUMS 2>&1 | grep OK`


## Configure the Terraform Environment

* Unzip `terraform_*_linux_amd64.zip` to your `~/terraform` directory:
    - `unzip terraform_*_linux_amd64.zip`

* Edit your `~./profile` to include the `~/terraform` directory in your PATH. Then, reload the Bash profile:
    - `echo 'export PATH="$PATH:$HOME/terraform"' >> ~/.profile`
    - `source ~/.profile`


## Verify Terraform

- `terraform`: run this command to see whether it works