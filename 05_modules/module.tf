module "ec2" {
  source = "./ec2"
  security_id = module.sg.security_group_id
}

module "sg" {
  source = "./sg"
}

module "s3" {
  source = "./s3bucket"
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