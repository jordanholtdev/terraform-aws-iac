resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.aws_subnet_id
  associate_public_ip_address = true 
  user_data = file("${path.module}/../../scripts/add-users.yaml")
  tags = merge(
    var.additional_tags
  )
}