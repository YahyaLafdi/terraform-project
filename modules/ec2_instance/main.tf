


resource "aws_instance" "iac_instance"{


		ami = var.instance_ami_type[0]
  instance_type = var.instance_ami_type[1]
  key_name = var.ssh_key
	subnet_id = var.subnet-id
  vpc_security_group_ids = [var.sg-id]
  security_groups = [var.sg-id]
tags = {
    Name = var.instance_name
 }


}
