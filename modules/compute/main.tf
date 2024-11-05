resource "aws_instance" "app_server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.aws_subnet_id
  associate_public_ip_address = true
  key_name                    = var.key_name
  user_data                   = file("${path.module}/../../scripts/add-users.yaml")
  depends_on = [ var.aws_internet_gateway.gw ]
  tags = merge(
    var.additional_tags
  )
}
