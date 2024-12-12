variable "cidr_block" {
  type        = string
  description = "description"
  default     = "10.0.0.0/16"
}

variable "tag_name" {
  type        = string
  description = "description"
  default     = "task1"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "enter the Region name"
}
