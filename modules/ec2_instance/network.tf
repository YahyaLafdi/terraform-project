
## creating custom VPC
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "${var.prefix}-vpc"
  }
}
## creating Subnet
resource "aws_subnet" "main_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.1.0.0/24"
  map_public_ip_on_launch = true
  availability_zone = "${var.zone}c"
    tags = {
      Name = "${var.prefix}-sub-public-c"
    }
  
}
## creating Internet Gatway for allowing internt access to Ressources

  resource "aws_interet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.prefix}-igw"
  }
  }
  resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.main.id
  ### allow internet acesss 

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_interet_gateway.igw.id

  }
  tags = {
    Name = "${var.prefix}-route-table"
  }
}
## Associating route table to subnet 

resource "aws_route_table_association" "public" {
  route_table_id = aws_route_table.RT.id
  subnet_id      = aws_subnet.main_subnet.id
}



