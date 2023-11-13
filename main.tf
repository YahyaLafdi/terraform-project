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




module "ec2_instance" {

source = "./modules/ec2_instance"
}
module "terraform_configuration" {

source = "./modules/terraform_configuration"
}




