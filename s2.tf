provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web1" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-ec2"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-ec3"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "shashwat-123456789"

  tags = {
    Name = "TerraformBucket"
  }
}