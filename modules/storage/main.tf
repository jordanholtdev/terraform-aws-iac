resource "aws_db_instance" "default" {
  identifier        = var.db_name
  instance_class    = var.db_instance_class
  engine            = "mysql"
  engine_version    = "8.0"
  allocated_storage = 10
  vpc_security_group_ids = var.db_security_group_id

  username = var.db_username
  password = var.db_password
  db_subnet_group_name = aws_db_subnet_group.default.name
  skip_final_snapshot = true

  tags = merge(
    var.additional_tags
  )
}


resource "aws_db_subnet_group" "default" {
  name       = "db-subnet-group"
  subnet_ids = var.subnet_ids  

  tags = {
    Name = "My DB subnet group"
  }
}