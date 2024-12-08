module "Networking_module" {
  source   = "./Networking_module"
  region   = var.region_name
  vpc_cidr = var.vpc_cidr_1
  pub_sub1 = var.public_subnet1
  pub_sub2 = var.public_subnet2
  pvt_sub1 = var.private_subnet1
  pvt_sub2 = var.private_subnet2
}
