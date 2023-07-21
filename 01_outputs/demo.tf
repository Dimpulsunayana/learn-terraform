output "demo" {
  value = "Hello soundarya"
}

output "demo1" {
  value = "Hello dimpul"
}


resource "aws_s3_bucket" "bamhu" {
  bucket = "terraform-dimpu"
  #region = "ap-south-1"

  #  tags = {
  #    Name        = "terraform-dimpu"
  #    #Environment = "Dev"
  #  }
}

#data "aws_ami" "example" {
#  most_recent = true
# name_regex  = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230516"
#  owners      = ["099720109477"]
#}
#
#resource "aws_instance" "web" {
#  ami           = "${data.aws_ami.example.id}"
#  instance_type = var.instance_type
#
#  tags = {
#    Name = var.instance_name
#  }
#}