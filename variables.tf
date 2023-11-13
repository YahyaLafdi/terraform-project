variable "duck_dns" {
	description = "DuckDns token "
  
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


