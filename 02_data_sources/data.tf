data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

output "demo" {
  value = data.aws_ami.example.image_id
}

data "aws_instance" "foo" {
  instance_id = "i-051d424e43055076f"
}

output "demo1" {
  value = data.aws_instance.foo.public_ip
}

output "demo2" {
  value = data.aws_instance.foo.private_ip
}