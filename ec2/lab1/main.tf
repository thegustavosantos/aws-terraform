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
    count         = 3
    ami           = "ami-0f34c5ae932e6f0e4" # AWS Linux
    instance_type = "t2.micro"
    key_name      = "terraform-aws"
    tags = {
      Name        = "dev-${count.index}"
    }
    vpc_security_group_ids = ["${aws_security_group.access-ssh.id}"]
}

resource "aws_security_group" "access-ssh" {
  name        = "access-ssh"
  description = "SSH Access SG"

  ingress {
    description      = "ingress ssh rule"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["${chomp(data.http.myip.response_body)}/32"]
  }

  tags = {
    Name = "ssh-access"
  }
}

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}

resource "aws_s3_bucket" "dev-4" {
  bucket  = "lab1-dev-4"

  tags = {
    Name        = "lab1-dev-4"
  }
}

resource "aws_instance" "dev-4" {
    ami           = "ami-053b0d53c279acc90" #Ubuntu
    instance_type = "t2.micro"
    key_name      = "terraform-aws"
    tags = {
      Name        = "dev-4"
    }
    vpc_security_group_ids = ["${aws_security_group.access-ssh.id}"]
    depends_on = [aws_s3_bucket.dev-4]
}

resource "aws_instance" "dev-5" {
    ami           = "ami-053b0d53c279acc90" #Ubuntu
    instance_type = "t2.micro"
    key_name      = "terraform-aws"
    tags = {
      Name        = "dev-5"
    }
    vpc_security_group_ids = ["${aws_security_group.access-ssh.id}"]
}