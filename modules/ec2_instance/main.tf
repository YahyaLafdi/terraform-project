
data "aws_ami" "amazon_ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  owners = ["099720109477"]

}
resource "aws_key_pair" "Tconfig_key" {
  key_name   = "t_config"
  public_key = "~/.ssh/id_rsa.pub"
}

resource "aws_instance" "jenkins_instance"{

		ami = data.aws_ami.amazon_ubuntu.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.Tconfig_key.key_name
	subnet_id = aws_subnet.main_subnet.id
  vpc_security_group_ids = [
    aws_security_group.Jenkins.id
    ]
tags = {
    Name = "${var.prefix}-Jenkins"
 }
    provisioner "local-exec" {
      command = "echo url='https://www.duckdns.org/update?domains=server-jenkins&token=${var.duck_dns}&ip=${aws_instance.jenkins_instance.public_ip}' | curl -K -"
    }
}
