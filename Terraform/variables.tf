variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
}

variable "ec2_ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string
}

variable "ec2_instance_type" {
  description = "The instance type for the EC2 instance."
  type        = string
}

variable "ec2_instance_name" {
  description = "The name for the EC2 instance."
  type        = string
}

variable "s3_environment" {
  description = "The environment for the S3 bucket."
  type        = string
}
