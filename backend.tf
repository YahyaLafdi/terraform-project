terraform {
  backend "s3" { ##create an s3 bucket
    bucket = "state-s3-terraform-file" #change the name
    key    = "terraform/terraform.tfstate"
    region = "eu-west-3" # and region
    dynamo_table = "terraform_lock"
}
}

