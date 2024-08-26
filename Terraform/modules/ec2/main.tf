provider "aws" {
  region = var.region   
}

# resource "aws_instance" "my_instance" {
#   ami           = "ami-05c3dc660cb6907f0"  
#   instance_type = "t2.micro"  

#   tags = {
#     Name = "MyInstance"
#   }
# }



# resource "aws_instance" "my_instance" {
#   ami           = var.ami_id
#   instance_type = var.instance_type

#   tags = {
#     Name = var.instance_name
#   }
# }
# variable "instance_type" {
#   default = "t2.micro"
# }
variable "instance_name" {}
resource "aws_instance" "my_instance" {
  ami           = "ami-03bfe38a90ce33425"
  instance_type = var.region
  tags = {
    Name = var.instance_name
  }
}
