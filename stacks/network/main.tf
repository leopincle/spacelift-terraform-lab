provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "demo" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "spacelift-demo-vpc"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "spacelift-demo-subnet"
  }
}

output "vpc_id" {
  value = aws_vpc.demo.id
}

output "subnet_id" {
  value = aws_subnet.public.id
}