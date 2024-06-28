variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "public_subnet1" {
  description = "The public subnet ID"
  type        = string
}

variable "public_subnet2" {
  description = "The public subnet ID"
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

variable "instance_count" {
  description = "The number of EC2 instances"
  type        = number
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}

variable "ec2_key_pair" {
  description = "The name of the EC2 key pair"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID"
  type        = string
}

variable "iam_instance_profile" {
  description = "The IAM instance profile"
  type        = string
}
