output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_sg-id" {
  value = module.security.public_sg-id //module output name
}

output "private_sg-id" {
  value = module.security.private_sg-id
}

output "public_route_table_id" {
  value = module.route_table.public_route_table_id
}

output "private_route_table_id" {
  value = module.route_table.private_route_table_id
}

output "nat_gateway" {
  value = module.NAT.nat_gateway
}

output "internet_gateway_id" {
  value = module.IGW.internet_gateway_id
}

output "public_sub-id" {
  value = module.subnet.public_sub-id
}

output "pvt_sub1-id" {
  value = module.subnet.pvt_sub1-id
}
output "pvt_sub2-id" {
  value = module.subnet.pvt_sub2-id
}

output "DNS" {
  value = module.alb.DNS
}
