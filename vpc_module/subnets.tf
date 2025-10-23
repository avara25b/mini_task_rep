resource "aws_subnet" "public_subnet" {
  
  for_each = var.public_cidr_block

  vpc_id     = aws_vpc.main.id
  cidr_block = each.value
  availability_zone = var.public_az[each.key]

  tags = {
    Name = each.key
  }
}

resource "aws_subnet" "private_subnet" {
  
  for_each = var.private_cidr_block

  vpc_id     = aws_vpc.main.id
  cidr_block = each.value
  availability_zone = var.private_az[each.key]

  tags = {
    Name = each.key
  }
}