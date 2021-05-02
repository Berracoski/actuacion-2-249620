##Internet Gateway
resource "aws_internet_gateway" "pl-249620-ig" {
  vpc_id = aws_vpc.pl-249620-vpc.id

  tags = {
    Name = "pl-249620-ig"
  }
}

##Route table
resource "aws_default_route_table" "pl-249620-rt" {
  default_route_table_id = aws_vpc.pl-249620-vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.pl-249620-ig.id
  }

  tags = {
    Name = "pl-249620-rt"
  }
}