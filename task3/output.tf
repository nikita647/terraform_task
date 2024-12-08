output "vpc-id" {
  value       = module.Networking_module.vpc-id
  description = "print ID of vpc"
}
output "pub_subnet1" {
  value       = module.Networking_module.pub_subnet1
  description = "print ID of pub-subnet1"
}
output "pub_subnet2" {
  value       = module.Networking_module.pub_subnet2
  description = "print ID of pub-subnet2"
}
output "pvt_subnet1" {
  value       = module.Networking_module.pvt_subnet1
  description = "print ID of pvt-subnet1"
}
output "pvt_subnet2" {
  value       = module.Networking_module.pvt_subnet2
  description = "print ID of pvt-subnet2"
}
output "pub_route-table" {
  value       = module.Networking_module.pub_route-table
  description = "print ID of pvt-subnet2"
}
output "pvt_route-table" {
  value       = module.Networking_module.pvt_route-table
  description = "print ID of pvt-subnet2"
}
