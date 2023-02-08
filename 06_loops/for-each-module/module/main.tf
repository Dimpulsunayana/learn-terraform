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

output "publicip" {
  value = aws_instance.web
#for k, v in aws_instance.web : k => v.public_ip

}
