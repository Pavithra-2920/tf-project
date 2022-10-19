resource "aws_vpc" "APS1-dev-vpcs" {
    for_each = lookup(var.vpc_configuration, "default")
    cidr_block = each.value
    tags = {
        "Name" = each.key
    }
  
}

resource "aws_vpc" "Project_APS1-deployement" {
  cidr_block = lookup(var.vpc_configuration, "cidr_block")
  instance_tenancy = "default"
  
  tags = {
    Name = "demo_vpc"
  }
}