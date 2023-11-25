
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
variable "subnet-id"{
        description = "use sepecific subnet"
        type = string
        default = "subnet-0028c1d92b5b56caa"

}

variable "instance_type"{
        description = "ami and type"
        type = string
        default = "t2.micro"

}
variable "ssh_key"{
	type = string
	default = "AccNew"  # already created an ssh key on AWS
}
variable "duck_dns" {
	description = "DuckDns token "
  default = "db8108bc-b996-4f0f-b619-d50d35c9fc75"
}


variable "duck_dns_domain" {
  description = "DuckDns domain name "
  default = "server-jenkins"
}

variable "duck_dns_domain_dep" {
  description = "DuckDns domain name "
  default = "dep-server"
}


