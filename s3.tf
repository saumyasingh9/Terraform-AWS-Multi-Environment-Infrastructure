resource "aws_s3_bucket" "my_bucket" {
  bucket = "tws-free-devops-bootcamp-bucket-24"


  tags = {
    Name        = "tws-free-devops-bootcamp-bucket-24"

  }
}