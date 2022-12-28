terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "myEC2" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"

    tags = {
      Name = "harmans-ec2"
    }
}