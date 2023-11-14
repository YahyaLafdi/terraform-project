
data "aws_ami" "amazon_ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  owners = ["099720109477"]

}

resource "aws_instance" "iac_instance"{

		ami = data.aws_ami.amazon_ubuntu.id
  instance_type = var.instance_type
  key_name = var.ssh_key
	subnet_id = aws_subnet.main_subnet.id
  vpc_security_group_ids = [
    aws.aws_vpc.main.id
    ]
  security_groups = [var.sg-id]
tags = {
    Name = var.instance_name
 }


}
