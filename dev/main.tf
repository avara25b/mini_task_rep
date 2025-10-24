provider "aws" {
    region = "us-east-1"
}

module "vpc" {
    source = "/Users/andrew/Documents/25b-terraform/mini-task/vpc_module"
}

module "iam_role_admin" {
    source = "/Users/andrew/Documents/25b-terraform/mini-task/iam_role_module"
}