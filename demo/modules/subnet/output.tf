output "public_sub-id" {
   value       = aws_subnet.public_subnet1.id
  description = "description"
}

output "pvt_sub1-id" {
   value       = aws_subnet.pvt_subnet1.id
  description = "description"
}
output "pvt_sub2-id" {
   value       = aws_subnet.pvt_subnet2.id
  description = "description"
}
