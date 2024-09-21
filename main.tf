provider "aws" {
  region = "eu-west-2"  # Adjust this to your preferred region
}

# Create an S3 bucket
resource "aws_s3_bucket" "vstorer" {
  bucket = "vstorer"  # Change this to a globally unique name
}

# Backend configuration to use the S3 bucket
terraform {
  backend "s3" {
    bucket = "vstorer"
    key    = "vglobal/s3/terraform.tfstate"
    region = "eu-west-2"  # Adjust this to your preferred region
  }
}

# Define a security group to allow HTTP, HTTPS, and SSH traffic
resource "aws_security_group" "lizardgroup" {
  name        = "lizardgroup"
  description = "Allow HTTP, HTTPS, and SSH traffic"
  vpc_id      = "vpc-0724de6e180ac7e64"  # Replace with your VPC ID

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 instance
resource "aws_instance" "webinstance" {
  ami           = "ami-0903ff18cc3c8e341"  # Amazon Linux 2023 AMI ID for eu-west-2, update for your region if needed
  instance_type = "t2.micro"
  key_name      = "dannyserverkeypair"     # Specify the key pair name here

  security_groups = [
    aws_security_group.lizardgroup.name
  ]

  iam_instance_profile = "Ec2_SSM"  # Your pre-existing IAM instance profile

  tags = {
    Name = "webinstance"
  }
}

