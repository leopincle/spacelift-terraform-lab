provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "spacelift-demo-bucket-123456"

  tags = {
    Environment = "dev"
    ManagedBy   = "Spacelift"
  }
}