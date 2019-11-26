variable "region" {
}

variable "shared_creds" {
}

variable "profile" {
}

variable "my_ami" {
  type = map(string)
}

provider "aws" {
  version                 = "~> 2.0"
  region                  = var.region
  shared_credentials_file = var.shared_creds
  profile                 = var.profile
}

resource "aws_instance" "web" {
  ami           = var.my_ami[var.region]
  instance_type = "t2.micro"
  tags = {
    name = "windows2019"
  }
  key_name = "yolo"
}
.
