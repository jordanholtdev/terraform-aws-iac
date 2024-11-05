resource "aws_db_instance" "default" {
  identifier         = var.db_name
  instance_class     = var.db_instance_class
  engine             = "mysql"
  
  allocated_storage   = 20
  
  username           = var.db_username # Add as a variable if needed.
  
  password           = var.db_password # Add as a variable if needed.
  
  skip_final_snapshot= true
  
  tags               = { Name = var.db_name }
}


