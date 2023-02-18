module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_details.name
  cidr = var.vpc_details.cidr_block

  azs             = var.azs_details.azs
  private_subnets = var.azs_details.private_subnets
  public_subnets  = var.azs_details.public_subnets

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}