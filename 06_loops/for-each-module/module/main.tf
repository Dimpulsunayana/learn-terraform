data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
}

variable "instance_type" {}

variable "name" {}

output "ec2" {
  value = aws_instance.web
}