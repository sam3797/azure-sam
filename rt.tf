resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

resource "aws_route_table_association" "pub-rt-association" {
  subnet_id      = aws_subnet.pub-subnet-1.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "pub-rt-association-1" {
  subnet_id      = aws_subnet.pub-subnet-2.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "pub-rt-association-2" {
  subnet_id      = aws_subnet.pub-subnet-3.id
  route_table_id = aws_route_table.public-rt.id
}


resource "aws_route_table" "pvt-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw.id
  }

  tags = {
    Name = "pvt-rt"
  }
}

resource "aws_route_table_association" "pvt-rt-association-" {
  subnet_id      = aws_subnet.pvt-subnet-1.id
  route_table_id = aws_route_table.pvt-rt.id
}

resource "aws_route_table_association" "pvt-rt-association-1" {
  subnet_id      = aws_subnet.pvt-subnet-2.id
  route_table_id = aws_route_table.pvt-rt.id
}

resource "aws_route_table_association" "pvt-rt-association-2" {
  subnet_id      = aws_subnet.pvt-subnet-3.id
  route_table_id = aws_route_table.pvt-rt.id
}