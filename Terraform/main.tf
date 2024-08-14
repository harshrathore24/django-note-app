
provider "aws" {
  region = "us-east-2"  
}

resource "aws_instance" "my_instance" {
  ami           = "ami-05c3dc660cb6907f0"  
  instance_type = "t2.micro"  

  tags = {
    Name = "MyInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.my_instance.public_ip
}
