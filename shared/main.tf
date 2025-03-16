module "my_vpc" {
    source = "./vpc"
    environment = var.environment
}

module "my_subnet" {
    source = "./subnet"
    environment = var.environment
    vpc_id = module.my_vpc.vpc_id
}