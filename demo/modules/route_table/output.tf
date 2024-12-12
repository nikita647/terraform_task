output "public_route_table_id" {
  value = aws_route_table.public_RT.id
}

output "private_route_table_id" {
  value = aws_route_table.private_RT.id
}
