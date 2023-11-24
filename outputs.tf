
output "Jenkins_public_ip"{
	description = "print public ip "
	value = module.ec2_instance.public_ip

}

output "private_ip" {
        description = "print private ip "
        value = module.ec2_instance.private_ip

}

output "jenkins_url" {
        description = "print jenkins url  "
        value = module.ec2_instance.Jenkins_url

}
