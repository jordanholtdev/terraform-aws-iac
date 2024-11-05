output "instance_id" {
  value = aws_instance.app_server.id
}

output "resolved_path" {
  value = "${path.module}/../../scripts/add-users.yaml"
}

output "instance_public_ip" {
  value = aws_instance.app_server.public_ip
}