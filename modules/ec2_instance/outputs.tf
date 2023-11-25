
output "jenkins_public_ip"{
	#description = "print public ip "
	value = "Instane created with private ip ===>  ${aws_instance.jenkins_instance.public_ip}"

}

output "jenkins_private_ip" {
        description = "print private ip "
        value = "Instance created with private ip ==>   ${aws_instance.jenkins_instance.private_ip}"

}
output "docker_public_ip"{
	#description = "print public ip "
	value = "Instane created with private ip ===>  ${aws_instance.docker_instance.public_ip}"

}

output "docker_private_ip" {
        description = "print private ip "
        value = "Instance created with private ip ==>   ${aws_instance.docker_instance.private_ip}"

}
output "Jenkins_url" {
        description = "print jenkins url "
        value = "Jenkins Url ===>   http://${var.duck_dns_domain}.duckdns.org:8080/"

}


output "Docker_url" {
        description = "print docker/nginx url "
        value = "Nginx runnig container ===>   http://${var.duck_dns_domain_dep}.duckdns.org:80/"

}
