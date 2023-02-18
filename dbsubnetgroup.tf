resource "aws_db_subnet_group" "mydbsub" {
  name       = "mikeydb-subsg"
  subnet_ids = [module.vpc.private_subnets[0],module.vpc.private_subnets[1]]
}