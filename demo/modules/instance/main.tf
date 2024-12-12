resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.size
  subnet_id   = var.public_sub-id
vpc_security_group_ids= [var.public_sg-id]
key_name = var.key_name
  tags = {
    Name = "public_server"
  }
}

resource "aws_instance" "private1" {
  ami           = var.ami_id
  instance_type = var.size
  subnet_id   = var.pvt_sub1-id
vpc_security_group_ids= [var.private_sg-id]
key_name = var.key_name
  tags = {
    Name = "pvt_server"
  }
}
