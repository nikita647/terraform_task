resource "aws_subnet" "public_subnet1" {
  vpc_id     = var.vpc_id
  cidr_block = var.pub_sub1_cidr
  availability_zone = var.az1
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "pvt_subnet1" {
  vpc_id     = var.vpc_id
  cidr_block = var.pvt_sub1_cidr
availability_zone = var.az1
  tags = {
    Name = "pvt_sub1"
  }
}

resource "aws_subnet" "pvt_subnet2" {
  vpc_id     = var.vpc_id
  cidr_block =  var.pvt_sub2_cidr
availability_zone = var.az2
  tags = {
    Name = "pvt_sub2"
  }
}
