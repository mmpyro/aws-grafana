variable "region" {
    default = "eu-central-1"
}

variable "ami" {
    default = "ami-0cc293023f983ed53"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "owner_tag" {
  default = "mmpyro"
}

variable "ssh_key_path" {
  default = ""
}

variable "access_key" {
}

variable "secret_key" {
}
