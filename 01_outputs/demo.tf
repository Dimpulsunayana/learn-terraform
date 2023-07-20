output "demo" {
  value = "Hello soundarya"
}


#resource "aws_s3_bucket" "b" {
#  bucket = "terraform-sunnu"
#
#  #  tags = {
#  #    Name        = "terraform-dimpu"
#  #    #Environment = "Dev"
#  #  }
#}

data "aws_ami" "example" {
  most_recent = true
 name_regex  = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230516"
  owners      = ["099720109477"]
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.example.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}