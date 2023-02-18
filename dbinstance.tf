resource "aws_db_instance" "dbinstance" {
  allocated_storage    = 20
  db_name              = "mikeydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "root"
  password             = "rootroot"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.mysg.id]
  db_subnet_group_name = aws_db_subnet_group.mydbsub.name

  depends_on = [
    module.vpc,aws_db_subnet_group.mydbsub
  ]
}