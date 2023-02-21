data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "web" {
  for_each = var.demo
  ami           = data.aws_ami.example.id
  instance_type = each.value.instance_type

  tags = {
    Name = each.value.name
  }
}

output "out" {
  value = {
    for k, v in aws_instance.web : k => v.instance_type
  }
}

variable "demo" {
  default = {
    cart = {
      name="cart"
      instance_type="t3.small"
    }
    catalogue = {
      name="catalogue"
      instance_type="t3.micro"
    }
  }
}