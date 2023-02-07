resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.security_id]

  tags = {
    Name = "test-centos8"
  }
}