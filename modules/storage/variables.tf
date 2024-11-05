variable "db_instance_class" {
    description = "Database instance class"
}

variable "db_name" {
    description = "Name of the database"
}

variable "db_username" {
    description = "Username for the database"
  
}

variable "db_password" {
    description = "Password for the database"
}

variable "additional_tags" {
    description = "Additional tags for the resources"
    type = map(string)
    default = {}
  
}