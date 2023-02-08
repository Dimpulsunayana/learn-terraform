data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = var.sample == null ? "t3.micro" : var.sample

  tags = {
    Name = test
  }
}

variable "sample" {
  default= "null"
}