resource "aws_instance" "example" {
  count                 = var.instance_count
  ami                   = var.ami_id
  instance_type         = var.instance_type
  subnet_id             = var.subnets[count.index % length(var.subnets)]
  key_name              = var.key_name
  associate_public_ip_address = var.associate_public_ip_address

  security_groups       = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "Windows server -${count.index}"
  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "ec2-sg"
  description = "Security group for EC2 instances in VPC"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_lb_target_group_attachment" "example" {
  count            = var.instance_count
  target_group_arn = var.target_group
  target_id        = aws_instance.example[count.index].id
  port             = 80
}
