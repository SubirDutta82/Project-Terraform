


resource "aws_vpc" "prod_vpc" {
    cidr_block = var.vpc_cidr_block
    instance_tenancy = var.vpc_tenancy
    tags = var.vpc_tags
  
}

resource "aws_internet_gateway" "public-IGW" {
    vpc_id = aws_vpc.prod-vpc.id
  
}

# When you run "terraform apply", Terraform will execute the data block to fetch information about the availability zones. 
# The fetched information will be stored in the data.aws_availability_zones.available attribute. 
# The locals block will then use this information to set the value of the availability_zone local variable. 
# Finally, the resource "aws_subnet" block will use the local variable to set the availability zone for the subnet.

data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  availability_zone = data.aws_availability_zones.available.names[0]
}

resource "aws_subnet" "public-subnet" {
    vpc_id              = aws_vpc.prod_vpc.id
    availability_zone   = local.availability_zone
    cidr_block          = var.vpc_cidr_block
    
}