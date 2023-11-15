
output "public_ip"{
	#description = "print public ip "
	value = "Instane created with private ip ${aws_resource.iac_instance.public_ip}"

}

output "private_ip" {
        description = "print private ip "
        value = "Instane created with private ip ${aws_resource.iac_instance.private_ip}"

}

