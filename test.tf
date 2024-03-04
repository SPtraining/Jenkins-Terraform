terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform {
  required_version = ">=0.13"
}


provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "myec2" {
   ami = "ami-02ca28e7c7b8f8be1"
   instance_type = "t2.micro"
   key_name = "linuxt2medium"
   tags = {
      Name = "LinuxAuto"
   }

}
