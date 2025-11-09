variable "dynamo_table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "tws-free-bootcamp-table"
} 

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0049e4b5ba14b6d36" # Amazon Linux 2 AMI (HVM), SSD Volume Type in us-east-1
}