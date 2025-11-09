resource "aws_s3_bucket" "my_bucket" {
    count = var.bucket_count
  bucket = "${var.my-env}-tws-free-devops-bootcamp-bucket-${count.index}"


  tags = {
    Name        = "${var.my-env}-tws-free-devops-bootcamp-bucket-${count.index}"
    environment = var.my-env

  }
}