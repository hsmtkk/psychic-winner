resource "aws_subnet" "subnet" {
    cidr_block = "10.1.1.0/28"
    vpc_id = var.vpc_id
    tags  = {
        environment = var.environment
    }    
}