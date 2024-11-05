resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.aws_subnet_id

  tags = {
    Name = "App Server"
  }
}