provider "aws" {
    region = "ap-south-1"

}

resource "aws_security_group" "security-group-by-tf" {

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]

  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]

  }

  egress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]

  }
}

resource "aws_instance" "sec-grp-with-ec2-by-tf" {
  ami = "ami-01b6d88af12965bb6"
  instance_type = "t3.micro"
  key_name = "new_terraform"
  vpc_security_group_ids = [aws_security_group.security-group-by-tf.id]


  tags = {
    Name = "sec-grp-with-ec2-by-tf"
    Environment = "Test"



  }
}




