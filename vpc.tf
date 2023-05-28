resource "aws_vpc" "main" {
  cidr_block           = "10.20.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "pub-subnet-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.20.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-1"
  }
}

resource "aws_subnet" "pub-subnet-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.20.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-2"
  }
}

resource "aws_subnet" "pub-subnet-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.20.3.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-1"
  }
}


resource "aws_subnet" "pvt-subnet-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.20.4.0/24"

  tags = {
    Name = "pvt-subnet-1"
  }
}

resource "aws_subnet" "pvt-subnet-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.20.5.0/24"

  tags = {
    Name = "pvt-subnet-2"
  }
}

resource "aws_subnet" "pvt-subnet-3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.20.6.0/24"

  tags = {
    Name = "pvt-subnet-3"
  }
}


resource "aws_subnet" "pvt-subnet-4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.20.7.0/24"
  availability_zone = "us-east-1d"
  tags = {
    Name = "pvt-subnet-3"
  }
}