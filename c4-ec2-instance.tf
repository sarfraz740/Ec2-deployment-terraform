# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami                    = var.ec2_ami_id
  instance_type          = "t3.micro"
  key_name               = "first"
  count                  = var.ec2_instance_count
  subnet_id     = aws_subnet.subnets[count.index].id
  vpc_security_group_ids = [aws_security_group.security_group.id]
  tags = {
    "Name" = "EC2 Instance ${count.index}"
  }
}

