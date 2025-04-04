provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source  = "./modules/security_group"
  vpc_id  = module.vpc.vpc_id
}

module "ec2" {
  source              = "./modules/ec2"
  subnet_id           = module.vpc.subnet_id
  security_group_id   = module.security_group.security_group_id
  key_name            = var.key_name
  ami_id              = var.ami_id
}
