terraform {
    required_providers{
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.16"

        }
azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0, < 3.0"
    }

}
    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "eu-west-3"

}
 data "aws_security_group" "selected"{
     id = "sg-081aa0ddd83e3c5b5"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3_state

}

resource "aws_dynamodb_table" "terraform_lock" {

	name = "terraform-lock"
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LOCKID"
	attribute {
		name = "LOCKID"
		type = "S"
	}

}
resource "aws_s3_bucket_versioning" "bucket_vcs" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}


module "ec2_instance" {

source = "./modules/ec2_instance"
}




