provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "this" {
  count                   = "5"
  ami                     = "ami-0ae8f15ae66fe8cda"
  instance_type           = "t2.micro"
  subnet_id                = "subnet-0e694b558e05b6d2f"
  key_name                 = "terraform-zero-hero"
}