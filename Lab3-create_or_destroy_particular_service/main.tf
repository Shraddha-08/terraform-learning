provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "test1" {
    ami = "ami-01b6d88af12965bb6"
    instance_type = "t3.micro"
    tags = {
      Name = "test1"
    }
  
}

resource "aws_instance" "test2" {
    ami = "ami-01b6d88af12965bb6"
    instance_type = "t3.micro"
    tags = {
      Name = "test2"
    }
  
}

