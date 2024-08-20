terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}


resource "random_pet" "bucket_name_suffix" {
  length = 2
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-${random_pet.bucket_name_suffix.id}"
  acl    = "private"

  tags = {
    Name        = "my-bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "bucket_data" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "mydata.txt"
  source = "myfile.txt"
}