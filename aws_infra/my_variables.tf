variable "my-env" {
  description = "The environment for the infrastructure (e.g., dev, staging, prod)"
  type        = string
}

variable "ami_id" {
    description = "The AMI ID to use for EC2 instances"
    type        = string
}

variable "instance_type" {
    description = "The instance type for EC2 instances"
    type        = string
}

variable "instance_count" {
    description = "Number of EC2 instances to launch"
    type        = number
}

variable "bucket_count" {
    description = "Number of S3 buckets to create"
    type        = number
}

