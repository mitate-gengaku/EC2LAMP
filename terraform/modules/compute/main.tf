resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]

  key_name = "ec2-key"

  user_data = var.user_data

  tags = {
    Name = var.ec2_name
  }
}
