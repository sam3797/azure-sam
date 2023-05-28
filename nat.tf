resource "aws_eip" "nat_ip" {
  vpc = true
}

resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.pub-subnet-1.id

  tags = {
    Name = "nat-gw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}