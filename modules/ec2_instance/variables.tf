
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

variable "instance_ami_type"{
        description = "ami and type"
        type = list(string)
        default = ["ami-00983e8a26e4c9bd9","t2.micro"]

}

