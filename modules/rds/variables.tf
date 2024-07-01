variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "private_subnet1" {
  description = "The private subnet ID"
  type        = string
}

variable "private_subnet2" {
  description = "The private subnet ID"
  type        = string
}

variable "db_username" {
  description = "The username for the RDS instance"
  type        = string
}

variable "db_password" {
  description = "The password for the RDS instance"
  type        = string
  sensitive   = true
}

variable "security_group_id" {
  description = "The security group ID"
  type        = string
}
