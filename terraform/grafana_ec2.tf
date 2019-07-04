provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

locals {
  ssh_pub = "${file("${var.ssh_key_path}")}"
}


resource "aws_key_pair" "vm_key" {
  key_name  = "vm"
  public_key = "${local.ssh_pub}"
}

# user ubuntu
resource "aws_instance" "mm-ci-vm" {
    ami           = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name      = "${aws_key_pair.vm_key.key_name}" 

    tags = {
      owner = "${var.owner_tag}"
    }
}
