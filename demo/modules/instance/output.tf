output "pub_instance_id" {
  value       = aws_instance.web.id
  description = "print public security group"
}


output "pvt_instance_id" {
  value       = aws_instance.private1.id
  description = "print public security group"
}
