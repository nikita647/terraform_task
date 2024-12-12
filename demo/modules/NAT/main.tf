#NAT-Gateway
resource "aws_eip" "nat" {
  
  tags = {
    Name = "NAT Elastic IP"
  }
}



resource "aws_nat_gateway" "NAT" {
 allocation_id = aws_eip.nat.id
   subnet_id     = var.public_sub-id

  tags = {
    Name = "NAT-gw"
  }
}
