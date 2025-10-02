provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "vm-by-tf" {
    ami = "ami-01b6d88af12965bb6"
    instance_type = "t3.micro"
    key_name = "new_terraform"

    tags = {
      Name = "Terraform-EC2"
    }
}


