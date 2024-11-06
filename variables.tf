variable "aws_region" {
  description = "The AWS region to deploy resources."
  default     = "us-west-1"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string

}

variable "instance_type" {
  description = "The instance type for the EC2 instance."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string

}

variable "db_instance_class" {
  description = "The instance class for the RDS instance."
  type        = string

}

variable "db_name" {
  description = "The name of the RDS database."
  type        = string

}

variable "db_username" {
  description = "The username for the RDS database."
  type        = string

}

variable "db_password" {
  description = "The password for the RDS database."
  type        = string

}

variable "company" {
  description = "The company name for the resources."
  type        = string
  default     = "mycompany"

}

variable "environment" {
  description = "The environment for the resources."
  type        = string
  default     = "development"

}

variable "team" {
  description = "The team responsible for the resources."
  type        = string
  default     = "devops"

}

variable "purpose" {
  description = "The purpose of the resources."
  type        = string

}

variable "project" {
  description = "The project name for the resources."
  type        = string
  default     = "terraform-aws-iac"
}

variable "key_name" {
  description = "The key pair name to use for the EC2 instance."
  type        = string

}

