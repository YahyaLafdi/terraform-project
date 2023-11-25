
output "Jenkins_public_ip"{
	description = "print public ip "
	value = module.ec2_instance.jenkins_public_ip

}

output "Jenkins_private_ip" {
        description = "print private ip "
        value = module.ec2_instance.jenkins_private_ip

}

output "Docker_public_ip"{
	description = "print public ip "
	value = module.ec2_instance.docker_public_ip

}

output "Docker_private_ip" {
        description = "print private ip "
        value = module.ec2_instance.docker_private_ip

}


output "jenkins_url" {
        description = "print jenkins url  "
        value = module.ec2_instance.Jenkins_url

}
output "docker_url" {
        description = "print Jenkins password  "
        value = module.ec2_instance.Docker_url

}


output "jenkins_pass" {
        description = "Printing Jenkins initial password "
        value = module.ec2_instance.jenkins_password

}


