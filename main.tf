


resource "aws_vpc" "prod-vpc" {
    cidr_block = var.vpc_cidr_block
    instance_tenancy = var.vpc_tenancy
    tags = var.vpc_tags
  
}

resource "aws_internet_gateway" "public-IGW" {
    vpc_id = aws_vpc.prod-vpc.id
  
}