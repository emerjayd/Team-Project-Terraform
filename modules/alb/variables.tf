variable "public_subnet1" {
  description = "The public subnet ID"
  type        = string
}

variable "public_subnet2" {
  description = "The public subnet ID"
  type        = string
}

variable "instance_ids" {
  description = "The list of EC2 instance IDs"
  type        = list(string)
}

variable "security_group_id" {
  description = "The security group ID for the ALB"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}
