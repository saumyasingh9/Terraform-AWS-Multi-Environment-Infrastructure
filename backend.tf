#backend variables
variable "state_bucket_name" {
  default = "demoo-state-bucket24"
}

variable "state_table_name" {
  default = "demoo-state-table"
}

variable "aws-region" {
  default = "us-east-2"
}

#backend resources
resource "aws_s3_bucket" "state-bucket-24" {
  bucket = var.state_bucket_name
  tags = {
    Name = var.state_bucket_name
  }
}

resource "aws_dynamodb_table" "state-table-24" {
  name         = var.state_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
