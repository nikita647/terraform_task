variable "vpc-cidr" {
  type        = string
  description = "enter vpc cidr"
  default     = "10.0.0.0/16"
}

variable "region-name" {
  type        = string
  default     = "us-east-1"
  description = "enter the Region name"
}
variable "tag-name" {
  type        = string
  description = "description"
  default     = "my_vpc"
}


variable "public_subnet1_cidrs" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet1_cidrs" {
  type    = string
  default = "10.0.2.0/24"
}

variable "private_subnet2_cidrs" {
  type    = string
  default = "10.0.4.0/24"
}

variable "availability_zones1" {
  type    = string
  default = "us-east-1a"
}

variable "availability_zones2" {
  type    = string
  default = "us-east-1b"
}

variable "all_traffic_port" {
  type        = string
  default     = 0
  description = "Inbound/outbound rule for all traffic from/to port "
}
variable "ssh_port" {
  type        = string
  default     = 22
  description = "Inbound rule for ssh port from/to port "
}
variable "ami_id" {
  type        = string
  description = "description"
  default     = "ami-005fc0f236362e99f"

}

variable "instance_type" {
  type        = string
  description = "description"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "description"
  default     = "key_new"
}

