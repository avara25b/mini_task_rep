provider "aws" {
    region = "us-east-1"
}

module "vpc" {
    source = "/Users/andrew/Documents/25b-terraform/mini-task/vpc_module"
}