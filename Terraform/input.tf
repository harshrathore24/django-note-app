variable "ec2_ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
}

variable "ec2_instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = "t2.micro"
}

variable "ec2_instance_name" {
  description = "The name tag for the EC2 instance."
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "s3_environment" {
  description = "The environment tag for the S3 bucket."
  type        = string
  default     = "Dev"
}

variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-2"
}
