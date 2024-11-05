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
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      Terraform   = "true"
      Team        = var.team
      CostCenter  = "foo"
    }
  }
}

module "network" {
  source   = "./modules/network"
  vpc_cidr = var.vpc_cidr
  additional_tags = {
    Environment = var.environment
    Name        = "main"
  }

}

module "compute" {
  source                  = "./modules/compute"
  instance_type           = var.instance_type
  ami_id                  = var.ami_id
  key_name                = var.key_name
  aws_subnet_id           = module.network.subnet_id
  ec2_instance_depends_on = [module.network.gw_id]
  additional_tags = {
    Environment = var.environment
    Name        = "app-server-${var.environment}"
  }
}

module "storage" {
  source            = "./modules/storage"
  db_instance_class = var.db_instance_class
  db_name           = var.db_name
  db_username       = var.db_username
  db_password       = var.db_password
  additional_tags = {
    Environment = var.environment
    Name        = "db-${var.environment}"
  }
}
