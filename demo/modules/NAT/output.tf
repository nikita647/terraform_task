output "nat_gateway" {
  value = aws_nat_gateway.NAT.id
}

output "elastic_ip" {
  value =aws_eip.nat.id
}
