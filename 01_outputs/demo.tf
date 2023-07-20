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
 # name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["ami-053b0d53c279acc90"]
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.example.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}