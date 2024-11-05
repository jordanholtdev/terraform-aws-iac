terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.aws_region
}

module "network" {
  source = "./modules/network"
  vpc_cidr = var.vpc_cidr
  
}

module "compute" {
  source = "./modules/compute"
  instance_type = var.instance_type
  ami_id = var.ami_id
  aws_subnet_id = module.network.public_subnet_id  
}

module "storage" {
  source = "./modules/storage"
  db_instance_class = var.db_instance_class
  db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}
