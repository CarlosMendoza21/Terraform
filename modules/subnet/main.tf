resource "aws_subnet" "subnet1" {
  count = 1
  vpc_id = aws_vpc.vpc.id
  cidr_block = aws_vpc.vpc.cidr_block
  tags = {
    Name = var.subnet_name  
  }
}