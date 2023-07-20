output "demo" {
  value = "Hello soundarya"
}


resource "aws_s3_bucket" "b" {
  bucket = "terraform-sunnu"

  #  tags = {
  #    Name        = "terraform-dimpu"
  #    #Environment = "Dev"
  #  }
}