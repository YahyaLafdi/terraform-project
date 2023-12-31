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
variable "subnet_id" {
  type = map(string)
  default = {
    Name = "subnet-0028c1d92b5b56caa"
  }
}

resource "aws_instance" "Iac_instance" {
  ami = "ami-00983e8a26e4c9bd9"
  instance_type = "t2.micro"
  key_name = "AccNew"
	subnet_id = var.subnet_id.Name
  vpc_security_group_ids = [data.aws_security_group.selected.id]
  security_groups = [data.aws_security_group.selected.id]
tags = {
    Name = " Iac Instance "
 }
}
output  "ip_output" {

value = "Private IP is  :${aws_instance.Iac_instance.private_ip} and \n Public IP is :  ${aws_instance.Iac_instance.public_ip}"


}



