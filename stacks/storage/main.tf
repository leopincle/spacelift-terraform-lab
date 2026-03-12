provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "spacelift-demo-bucket-1212-123456"

  tags = {
    Environment = "lab"
    ManagedBy   = "Spacelift"
    Owner       = "DevOpsTeam"
  }
}