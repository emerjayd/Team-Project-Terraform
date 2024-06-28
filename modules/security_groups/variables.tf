variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "ec2_security_group_ingress" {
  description = "Ingress rules for EC2 security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "rds_security_group_ingress" {
  description = "Ingress rules for RDS security group"
  type = list(object({
    from_port       = number
    to_port         = number
    protocol        = string
    security_groups = list(string)
  }))
}

variable "elb_security_group_ingress" {
  description = "Ingress rules for ELB security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}
