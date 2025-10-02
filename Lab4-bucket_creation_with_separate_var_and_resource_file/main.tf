provider "aws" {
    region = var.region
  
}


resource "aws_s3_bucket" "myfirstbucketbytf" {
    bucket = var.bucket_name

    tags = {
      Name = "firstbucketbytf"
    }
 
}
