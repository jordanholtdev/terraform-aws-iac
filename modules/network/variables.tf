# modules/network/variables.tf
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "additional_tags" {
  description = "Additional tags for the resources"
  type = map(string)
  default = {}
  
}