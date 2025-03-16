resource "aws_vpc" "vpc" {
    cidr_block = "10.1.1.0/24"
    tags  = {
        environment = var.environment
    }      
}