# Declaring an Input Variable
# Input variables let you customize aspects of Terraform modules without altering the module's own source code. 
# This functionality allows you to share modules across different Terraform configurations, 
# making your module composable and reusable.

# When you declare variables in the root module of your configuration, 
# you can set their values using CLI options and environment variables. 
# When you declare them in child modules, the calling module should pass values in the module block.

# If you're familiar with traditional programming languages, it can be useful to 
# compare Terraform modules to function definitions:

# Input variables are like function arguments.
# Output values are like function return values.
# Local values are like a function's temporary local variables.


# Create VPC
# VPC settings
# When you don't specify a default value, the variable becomes required, 
# meaning that users must provide a value when running Terraform commands or using a .tfvars file

variable "vpc_name" {
    type        = string
    description = "Name for the VPC"
    default     = "my-vpc"
}

variable "vpc_cidr_block" {
    type        = string
    description = "IPv4 CIDR block for the VPC"
    default     = "10.0.0.0/16"
}

variable "vpc_tenancy" {
    type        = string
    description = "Tenancy type for VPC"
    default     = "default"
}

variable "vpc_tags" {
    type        = map(string)
    description = "Tags for the VPC"
}

variable "vpc_id" {
    type        = string
    description = "vpc id for subnet creation"
  
}


# Create subnet
# Subnet settings
# When you don't specify a default value, the variable becomes required, 
# meaning that users must provide a value when running Terraform commands or using a .tfvars file

variable "subnet_name" {
    type = string
    description = "Name of the subnet"
  
}

variable "availability_zone" {
    type = list(string)
    description = "Availability zone where the subnet will be created"
  
}

variable "IPv4_subnet_CIDR_block" {
    type = string
    description = "CIDR block for the subnet"
  
}

variable "subnet_tags" {
    type = string
    description = "Tags for the subnet"
  
}

# Create route table
# Route table settings
# When you don't specify a default value, the variable becomes required, 
# meaning that users must provide a value when running Terraform commands or using a .tfvars file

variable "route_table_name" {
    type = string
    description = "Name of the route table"
 
}

# Create internet gateway
# Internet Gateway settings
# When you don't specify a default value, the variable becomes required, 
# meaning that users must provide a value when running Terraform commands or using a .tfvars file

variable "internet_gateway_name" {
    type = string
    description = "Name of the internet gateway"
      
}

variable "IGW_tags" {
    type = string
    description = "Tags for Internet Gateway"
  
}




