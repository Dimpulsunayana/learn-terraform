module "ec2" {
  source = "./ec2"
}

module "sg" {
  source = "./sg"
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-dimpu"
    key    = "05_modules/terraform-tfstate"
    region = "us-east-1"
  }
}