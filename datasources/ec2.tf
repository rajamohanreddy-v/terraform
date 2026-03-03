
resource "aws_instance" "Roboshop" {
        ami     = data.aws_ami.joindevops.id
        instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.allow_tls.id]

}

provider "aws" {

    region = "us-east-1"
}


resource "aws_security_group" "allow_tls" {
  name        = "allow-all-terraform" # this is for AWS account
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all-terraform"
  }
}