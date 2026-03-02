resource "aws_instance" "Roboshop" {
  for_each = var.instances
  ami           = var.ami_id
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = each.key
  }
}

provider "aws" {
  region = var.region
}

resource "aws_security_group" "allow_tls" {
  name        = "allow all"
  description = "allow all traffic"

  ingress {
   
   from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }
    tags = var.sg_tags
}