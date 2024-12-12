module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc-cidr
  tag_name   = var.tag-name
  region     = var.region-name

}

module "subnet" {
  source        = "./modules/subnet"
  vpc_id        = module.vpc.vpc_id
  pub_sub1_cidr = var.public_subnet1_cidrs
  pvt_sub1_cidr = var.private_subnet1_cidrs
  pvt_sub2_cidr = var.private_subnet2_cidrs

  az1 = var.availability_zones1
  az2 = var.availability_zones2

}

module "IGW" {
  source = "./modules/IGW"
  vpc_id = module.vpc.vpc_id
}


module "NAT" {
  source        = "./modules/NAT"
  public_sub-id = module.subnet.public_sub-id

}

module "route_table" {
  source              = "./modules/route_table"
  vpc_id              = module.vpc.vpc_id
  internet_gateway_id = module.IGW.internet_gateway_id
  nat_gateway_id      = module.NAT.nat_gateway
  public_sub-id       = module.subnet.public_sub-id
  pvt_sub1-id         = module.subnet.pvt_sub1-id
  pvt_sub2-id         = module.subnet.pvt_sub2-id




}

module "security" {
  source           = "./modules/security"
  vpc_id           = module.vpc.vpc_id
  all_traffic_port = var.all_traffic_port
  ssh_port         = var.ssh_port


}

module "instance" {
  source        = "./modules/instance"
  ami_id        = var.ami_id
  size          = var.instance_type
  public_sub-id = module.subnet.public_sub-id
  public_sg-id  = module.security.public_sg-id
  key_name      = var.key_name
  private_sg-id = module.security.private_sg-id
  pvt_sub1-id   = module.subnet.pvt_sub1-id

}

module "alb" {
  source          = "./modules/alb"
  vpc_id          = module.vpc.vpc_id
  public_sg-id    = module.security.public_sg-id
  public_sub-id   = module.subnet.public_sub-id
  pvt_sub2-id     = module.subnet.pvt_sub2-id
  pvt_instance_id = module.instance.pvt_instance_id
}
