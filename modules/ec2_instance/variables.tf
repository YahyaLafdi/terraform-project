
variable "instance_name"{

	description = "Specifying Instance Name"
	type = string
	default = "Terraform-Instance"
}


variable "prefix" {
	description = "Specifying prefix for your ressources"
	type = string
	default = "my-ci-cd" 
}
variable "zone" {
	description = "Specifying availibilty zone"
	type = string
	default = "eu-west-3"
}

variable "sg-id"{
	description = "use sepecific security group"
	type = string
	default = "sg-081aa0ddd83e3c5b5"

}
variable "duck_dns" {
	description = "DuckDns token "
  default = "db8108bc-b996-4f0f-b619-d50d35c9fc75" #change
}


variable "duck_dns_domain" {
  description = "DuckDns domain name "
  default = "server-jenkins" #create and change this 
}

variable "duck_dns_domain_dep" {
  description = "DuckDns domain name "
  default = "dep-server" #create and change
}


