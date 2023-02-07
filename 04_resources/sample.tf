provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = "test-centos8"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-dimpu"
    key    = "04_resources/terraform-tfstate"
    region = "us-east-1"
  }
}
