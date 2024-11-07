output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "gw_id" {
  value = aws_internet_gateway.gw.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "private2_subnet_id" {
  value = aws_subnet.private2.id
}

output "public_security_group_id" {
  value = aws_security_group.public.id
}

output "db_security_group_id" {
  value = aws_security_group.db.id
}