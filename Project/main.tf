provider "aws" {
  region = var.region
}

module "vpc" {
  source = "../modules/vpc" # Updated relative path
  region = var.region
}

module "ec2" {
  source               = "../modules/ec2" # Updated relative path
  vpc_id               = module.vpc.vpc_id
  public_subnet1       = module.vpc.public_subnet1_id
  public_subnet2       = module.vpc.public_subnet2_id
  private_subnet1      = module.vpc.private_subnet1_id
  private_subnet2      = module.vpc.private_subnet2_id
  instance_count       = var.instance_count
  instance_type        = var.instance_type
  ec2_key_pair         = var.ec2_key_pair
  security_group_id    = aws_security_group.ec2.id
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name
}

module "rds" {
  source            = "../modules/rds" # Updated relative path
  vpc_id            = module.vpc.vpc_id
  private_subnet1   = module.vpc.private_subnet1_id
  private_subnet2   = module.vpc.private_subnet2_id
  db_username       = var.db_username
  db_password       = var.db_password
  security_group_id = aws_security_group.rds.id
}

module "alb" {
  source            = "../modules/alb" # Updated relative path
  vpc_id            = module.vpc.vpc_id
  public_subnet1    = module.vpc.public_subnet1_id
  public_subnet2    = module.vpc.public_subnet2_id
  instance_ids      = module.ec2.instance_ids
  security_group_id = aws_security_group.lb.id
}
