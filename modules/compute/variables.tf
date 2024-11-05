variable "instance_type" {
  description = "EC2 instance type"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "aws_subnet_id" {
  description = "ID of the subnet"
}

variable "additional_tags" {
  description = "Additional tags for the EC2 instance"
  type        = map(string)
  default     = {}
}

variable "key_name" {
  description = "Name of the key pair"
  
}