resource "aws_instance" "web" {
  ami           = "ami-0557a15b87f6559cf"
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

  provisioner "remote-exec" {

    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCg8lPDSZ4kgEVLVyZf0P9KP+VHAbMdh35jbgvI/HFo/fdXsSr/CUDNnzFd3Z0t1WrPbSK8F4mzuaxOtmUIgZkd2oClGQFruiBwfdPLBlABD98vxpjS9OLHqGMPUmk48OADW6ALy0kyRHOx4QTqTH0OM4bp2954MotEwLyUrBSYDkspGGPo4fLdA+k9++sop6mNHRGSEp10V9l4DHH/1kYGZ8nrP78PsTawC82Bz4C9INB1Zqp/6Rg3W4fqPgTks3di2K2tHNI1H7bFB1oPW81n8VBbF2NQejzq6fYa7FlJJp9Dz1JbXcLxakqqpWKiIX8kTBFoxHfr6OLPXY+ch422omchq+L3rYiT5eRAbzhh5NDuNUZGHT7uBSdVKqUKaQgseKCXIA9g6UYAocNIqJvqBtGPXJ4qgMccxW30C0Rmp92GLIEZMpPCYa6yO4cL2YixBoD7ue5Fi+KjAbBgHGRlaJ7aHr5VYOYMBw3/4OUan4Y9hfT89PYMOZ3FbQSv0kE= mikey@LAPTOP-08N4NDS4"
      host = aws_instance.web.public_ip
      port = 22
    }

    inline = [
      "sudo apt update"
      "sudo apt install -y"
    ]
  }