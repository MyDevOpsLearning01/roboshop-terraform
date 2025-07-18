provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-my85"
    key    = "tools/terraform.tstate"
    region = "us-east-1"
  }
}