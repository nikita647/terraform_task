resource "aws_route_table" "public_RT" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }
  tags = { 
  Name = "public_RouteTable"
  }
}


resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = var.public_sub-id
  route_table_id = aws_route_table.public_RT.id
}



resource "aws_route_table" "private_RT" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
nat_gateway_id = var.nat_gateway_id 
 }
  tags = {
    Name = "privat route table"
  }
}

resource "aws_route_table_association" "private_subnet1_association" {
  subnet_id      = var.pvt_sub1-id
  route_table_id = aws_route_table.private_RT.id
}

resource "aws_route_table_association" "private_subnet2_association" {
  subnet_id      = var.pvt_sub2-id
  route_table_id = aws_route_table.private_RT.id
}
