terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.11.0"
}

provider "aws" {
  region = "ap-south-1"
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
  security_group_id   = module.security_group.web_security_group_id
  key_name            = var.key_name
  ami_id              = var.ami_id
  instance_type       = var.instance_type
}
