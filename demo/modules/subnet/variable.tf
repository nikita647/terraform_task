variable "vpc_id" {
  type = string
  
}


variable "pub_sub1_cidr" {
  type        = string
  description = "description"
  default     = "10.0.1.0/24"
}

variable "pvt_sub1_cidr" {
  type        = string
  description = "description"
  default     = "10.0.2.0/24"
}

variable "pvt_sub2_cidr" {
  type        = string
  description = "description"
  default     = "10.0.4.0/24"
}

variable "az1" {
  type        = string
  description = "enter the az1"
  default     = "us-east-1a"
}

variable "az2" {
  type        = string
  description = "enter the az2"
  default     = "us-east-1b"
}

