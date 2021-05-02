##Creación del VPC
resource "aws_vpc" "pl-249620-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "pl-249620"
  }
}

##Creación de Subnet
resource "aws_subnet" "pl-249620-sn" {
  vpc_id                  = aws_vpc.pl-249620-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "pl-249620-sn"
  }
}