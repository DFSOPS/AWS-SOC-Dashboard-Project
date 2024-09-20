provider "aws" {
  region = "eu-west-2" # London region
}

# S3 Bucket for WAF Logs
resource "aws_s3_bucket" "aws_waf_logs_lond" { # Updated resource name to match bucket name
  bucket = "aws-waf-logs-lond" # New bucket name
}
# Terraform Backend Configuration
terraform {
  backend "s3" {
    bucket = "aws-waf-logs-lond"  # Use the new bucket name for backend
    key    = "terraform/state"      # Path to store the state file
    region = "eu-west-2"            # London region
  }
}

output "waf_logs_bucket" {
  value = aws_s3_bucket.aws_waf_logs_lond.id # Updated to match resource name
}
