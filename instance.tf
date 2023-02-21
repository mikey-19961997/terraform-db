resource "aws_instance" "web" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  availability_zone = "us-east-1a"
  key_name = "mikey"
  vpc_security_group_ids = [aws_security_group.mysg1.id]
  subnet_id = module.vpc.public_subnets[0]

  tags = {
    Name = "mikey-instance"
  }

  provisioner "remote-exec" {

    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host = aws_instance.web.public_ip
      port = 22
    }

    inline = [
      "sudo apt update",
      "sudo apt install nginx -y"
    ]
  }

  depends_on = [ aws_instance.web ]

}