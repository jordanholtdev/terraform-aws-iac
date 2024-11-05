data "aws_availability_zones" "available" {}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

    tags = {
        Name = "main"
    }
  
}

resource "aws_subnet" "public" {
    vpc_id     = aws_vpc.main.id
    cidr_block = "${cidrsubnet(var.vpc_cidr, 8, 0)}"

    availability_zone = data.aws_availability_zones.available.names[0]
    
    tags = merge(
        var.additional_tags,
    )
}