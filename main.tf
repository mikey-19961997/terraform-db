module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_details.name
  cidr = var.vpc_details.cidr_block

  azs             = var.azs_details.azs
  private_subnets = var.azs_details.private_subnets
  public_subnets  = var.azs_details.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}