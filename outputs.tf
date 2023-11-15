
output "Jenkins pubic_ip"{
	description = "print public ip "
	value = module.ec2_instance.aws_instance.jenkins_instance.public_ip

}

output "private_ip" {
        description = "print private ip "
        value = module.ec2_instance.aws_instance.jenkins_instance.public_ip

}

