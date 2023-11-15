
output "Jenkins_pubic_ip"{
	description = "print public ip "
	value = module.ec2_instance.pubic_ip

}

output "private_ip" {
        description = "print private ip "
        value = module.ec2_instance.private_ip

}

