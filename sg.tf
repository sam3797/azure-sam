resource "aws_security_group" "my-sg-1" {
  name        = "my-sg-1"
  description = "my-sg-1"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "port 22 allow"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "port 80 allow"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-sg-1"
  }
}

resource "aws_security_group" "pvt-sg" {
  name        = "pvt-sg"
  description = "pvt-sg"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "port 22 allow"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "port 443 allow"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["10.20.3.0/24"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-sg-1"
  }
}