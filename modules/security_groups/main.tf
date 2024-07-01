resource "aws_security_group" "elb" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = var.elb_security_group_ingress[0].from_port
    to_port     = var.elb_security_group_ingress[0].to_port
    protocol    = var.elb_security_group_ingress[0].protocol
    cidr_blocks = var.elb_security_group_ingress[0].cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "elb-sg"
  }
}

resource "aws_security_group" "ec2" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = var.ec2_security_group_ingress[0].from_port
    to_port     = var.ec2_security_group_ingress[0].to_port
    protocol    = var.ec2_security_group_ingress[0].protocol
    cidr_blocks = var.ec2_security_group_ingress[0].cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-sg"
  }
}

resource "aws_security_group" "rds" {
  vpc_id = var.vpc_id

  ingress {
    from_port       = var.rds_security_group_ingress[0].from_port
    to_port         = var.rds_security_group_ingress[0].to_port
    protocol        = var.rds_security_group_ingress[0].protocol
    security_groups = var.rds_security_group_ingress[0].security_groups
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds-sg"
  }
}
