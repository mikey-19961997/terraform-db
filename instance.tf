resource "aws_instance" "web" {
  ami           = ami-0557a15b87f6559cf
  instance_type = "t2.micro"
  associate_public_ip_address = true
  availability_zone = "us-east-1a"
  key_name = "mikeygeethu"
  vpc_security_group_ids = [aws_security_group.mysg1.id]
  subnet_id = module.vpc.public_subnets[0]

  tags = {
    Name = "mikey-instance"
  }
}