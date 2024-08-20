terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.16"  # Specify only one version
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
  source         = "./modules/ec2"
  ami_id          = var.ec2_ami_id
  instance_type   = var.ec2_instance_type
  instance_name   = var.ec2_instance_name
}

module "s3_bucket" {
  source        = "./modules/s3_buccket"  
#   bucket_name   = var.s3_bucket_name
#   environment    = var.s3_environment
}


resource "random_pet" "bucket_suffix" {
  length = 2
}