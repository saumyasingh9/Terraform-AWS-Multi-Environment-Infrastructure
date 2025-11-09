module "dev-app" {
source = "./aws_infra"

  my-env        = "dev"
  ami_id        = "ami-0049e4b5ba14b6d36"  # Example AMI ID for us-east-1
  instance_type = "t2.micro"
    instance_count = 1
    bucket_count = 1
}

module "stg-app" {
source = "./aws_infra"

  my-env        = "stg"
  ami_id        = "ami-0049e4b5ba14b6d36"  # Example AMI ID for us-east-1
  instance_type = "t2.micro"
  instance_count = 2
  bucket_count = 1
}

module "prd-app" {
source = "./aws_infra"

  my-env        = "prd"
  ami_id        = "ami-0049e4b5ba14b6d36"  # Example AMI ID for us-east-1
  instance_type = "t2.micro"
  instance_count = 3
  bucket_count = 2
}

