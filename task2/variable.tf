variable "region" {
  type        = string
  default     = "us-east-2"
  description = "enter the region name"

}

variable "bucket_name" {
  type        = string
  default     = "nikita.1999"
  description = "create bucket"
}

variable "tag_name" {
  type        = string
  default     = "nikita_bucket"
  description = "enter your bucket tag name"
}
variable "env_name" {
  type        = string
  default     = "devops"
  description = "bucket Enviroment name "
}
variable "status" {
  type        = string
  default     = "Enabled"
  description = "versioniong status"
}

variable "iam_user_name" {
  type        = string
  default     = "nikita"
  description = " Name of the iam user"
}

variable "policy" {
  type        = list(string)
  default     = ["s3:ListBucket", "s3:GetObject", "s3:PutObject"]
  description = " iam user policy"
}
variable "policy_name" {
  type        = string
  default     = "customuserpolicy"
  description = "policy name"
}



