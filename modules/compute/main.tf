resource "aws_instance" "app_server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.aws_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = true
  depends_on                  = [var.ec2_instance_depends_on]
  security_groups             = [var.aws_security_group_id]
  user_data                   = <<EOF
                              #cloud-config
                              groups:
                                - cloud-users 
                              users:
                                - default
                                - name: devops
                                  gecos: DevOps
                                  primary_group: cloud-users
                                  groups: users, admin
                                  lock_passwd: false
                                  passwd: $6$rounds=4096$ 
                                - name: cloud-user
                                  gecos: Cloud User
                                  primary_group: cloud-users
                                  groups: users, admin
                                  lock_passwd: false
                                  passwd: $6$rounds=4096$
                              package_update: true
                              package_upgrade: true
                              packages:
                                - git
                                - python3
                              runcmd:
                                - dnf install -y nginx mariadb105
                                - systemctl start nginx
                                - systemctl enable nginx
                                - systemctl status nginx
                                - echo "<html><h1>Hello World</h1></html>" > /usr/share/nginx/html/index.html
                                - systemctl start mariadb
                                - systemctl enable mariadb
                                - systemctl status mariadb
                                - nginx -v
                                - mariadb --version
                              EOF
  tags = merge(
    var.additional_tags
  )
}
