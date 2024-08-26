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
  region = var.region
}

module "ec2_instance" {
  source          = "./modules/ec2"
  ami_id           = var.ec2_ami_id
  instance_type    = var.ec2_instance_type
  instance_name    = var.ec2_instance_name
}

resource "random_pet" "bucket_suffix" {
  length = 2
}

module "s3_bucket" {
  source = "./modules/s3_bucket"
  bucket_name    = "my-unique-bucket-name-${random_pet.bucket_suffix.id}"
  environment    = var.s3_environment
}



