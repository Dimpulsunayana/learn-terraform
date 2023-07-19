output "demo" {
  value = "Hello dimpukitty"
}


resource "aws_s3_bucket" "b" {
  bucket = "terraform-dimpu"

  #  tags = {
  #    Name        = "terraform-dimpu"
  #    #Environment = "Dev"
  #  }
}