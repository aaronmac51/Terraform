provider "aws" {
	version	 			= "-> 2.0"
	region				= "us-west-2"
	shared_credentials_file 	= "/home/aaronmac5.aws/credentials"
	profile 			= "terraform"
}

resource "aws_instance" "web" {
	ami				= ""
	instance_type			= "t2.micro"
	tags = {
		name = linuxtest2"
	}
	key_name			= "yolo"
}
