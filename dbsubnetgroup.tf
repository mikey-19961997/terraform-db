resource "aws_db_subnet_group" "mydbsub" {
  name       = "mikeydb-subsg"
  subnet_ids = [module.vpc.public_subnets[0],module.vpc.public_subnets[1]]
}