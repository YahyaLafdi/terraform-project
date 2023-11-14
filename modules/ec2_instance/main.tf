
data "aws_ami" "amazon_ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  owners = ["099720109477"]

}

resource "aws_instance" "jenkins_instance"{

		ami = data.aws_ami.amazon_ubuntu.id
  instance_type = "Jenkins_Instance"
  key_name = var.ssh_key
	subnet_id = aws_subnet.main_subnet.id
  vpc_security_group_ids = [
    aws_security_group.Jenkins.id
    ]
tags = {
    Name = "${var.prefix}-Jenkins"
 }
    provisioner "local-exec" {
      command = "echo url='https://www.duckdns.org/update?domains=server-jenkins&token=${var.duckdns_token}&ip=${aws_instance.jenkins_instance.public_ip}' | curl -K -"
    }
}
