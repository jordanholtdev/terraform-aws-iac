resource "aws_instance" "app_server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.aws_subnet_id
  associate_public_ip_address = true
  key_name                    = var.ec2_key_name
  user_data                   = file("${path.module}/../../scripts/add-users.yaml")
  depends_on = [ var.ec2_instance_depends_on ]
  tags = merge(
    var.additional_tags
  )
}
