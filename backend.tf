terraform {
  backend "s3" {
    bucket = "state-s3-terraform-file"
    key    = "terraform/terraform.tfstate"
    region = "eu-west-3"
    dynamo_table = "terraform_lock"
}
}

