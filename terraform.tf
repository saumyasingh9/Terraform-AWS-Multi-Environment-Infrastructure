terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.20.0"
    }
  }

backend "s3" {
    bucket         = "state-bucket-24"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table= "state-table-24"
    encrypt = true
  }

}

provider "aws" {
  region= "us-east-2"
}



