resource "aws_subnet" "public-subnets" {
  count             = length(var.PUBLIC_SUBNETS)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.PUBLIC_SUBNETS, count.index)
  availability_zone = element(var.AZ, count.index)
  tags = {
    Name = "public-subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private-subnets" {
  count             = length(var.PRIVATE_SUBNETS)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.PRIVATE_SUBNETS, count.index)
  availability_zone = element(var.AZ, count.index)
  tags = {
    Name = "private-subnet-${count.index + 1}"
  }
}

resource "aws_route_table_association" "rt-assoc-public" {
  count          = length(var.PUBLIC_SUBNETS)
  subnet_id      = element(aws_subnet.public-subnets.*.id, count.index)
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "rt-assoc-priv" {
  count          = length(var.PRIVATE_SUBNETS)
  subnet_id      = element(aws_subnet.private-subnets.*.id, count.index)
  route_table_id = aws_route_table.private-route-table.id
}

