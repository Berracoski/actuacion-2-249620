##Creación de instancia 1
resource "aws_instance" "pl-249620-ec2" {
  ami                    = var.centos7
  instance_type          = var.instance_type
  key_name               = "id_rsa"
  vpc_security_group_ids = [aws_security_group.pl-249620-ssh-sg.id]
  subnet_id              = aws_subnet.pl-249620-sn.id
}