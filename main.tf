module "vpc" {
  source = "./modules/vpc"

  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  environment          = var.environment
}

module "ec2-instance" {
  source  = "./modules/ec2-instance"


  vpc_id             = module.vpc.vpc_id
  subnet_id          = module.vpc.public_subnet_ids[0]
  ec2_name           = var.ec2_name
  ec2_ami_id         = var.ec2_ami_id
  ec2_instance_type  = var.ec2_instance_type
  ec2_key_name       = var.ec2_key_name
  security_group_id = module.security_group.security_group_id
  environment        = var.environment

}

module "security_group" {
  source = "./modules/security_group"

  name          = var.sg_name
  vpc_id        = module.vpc.vpc_id
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
}