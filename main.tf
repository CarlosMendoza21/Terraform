terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


module "vpc_1" {
  source = "./modules/vpc"
  vpc_name = var.vpc_name
}

module "instance_1" {
  source = "./modules/instances"
  instance_name = var.instance_name
  instance_type = var.instance_type
  subnet_id = module.subnet_1.subnet_id
}

module "subnet_1" {
  source = "./modules/subnet"
  vpc_id = module.vpc_1.vpc_id
  vpc_cidr_block = module.vpc_1.cidr_block
  subnet_name = var.subnet_name
}

module "vpc_2" {
  source = "./modules/vpc"
  vpc_name = var.vpc_name
}

module "instance_2" {
  source = "./modules/instances"
  instance_name = var.instance_name
  instance_type = var.instance_type
  subnet_id = module.subnet_2.subnet_id
}

module "subnet_2" {
  source = "./modules/subnet"
  vpc_id = module.vpc_2.vpc_id
  vpc_cidr_block = module.vpc_2.cidr_block
  subnet_name = var.subnet_name
}