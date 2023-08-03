terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
      Name = "dev-${count.index}"
    }
}