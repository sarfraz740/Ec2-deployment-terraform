resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16" 
}

resource "aws_subnet" "subnets" {
  count          = 4
  cidr_block     = var.subnet_cidr_blocks[count.index]
  vpc_id         = aws_vpc.vpc.id
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "Subnet ${count.index}"
  }
}