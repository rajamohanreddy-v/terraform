variable "instances" {

    type = list
    default = ["mongodb", "catalogue", "cart", "user", "payment", "shipping", "mysql", "redis", "dispatch", "frontend", "rabbitmq"]
}

variable "environment" {

    type = string
    default = "dev"
}

variable "ec2_type" {

    type = string
    default = "t2.micro"
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"

}

variable "region" {

    type = string
    default = "us-east-1"
}

variable "sg_name" {

    type = string
    default = "Allow all the traffic"

}

variable "from_port" {

    type = number
    default = 0

}

variable "to_port" {

    type = number
    default = 0

}

variable "cidr_blocks" {

    type = list
    default = ["0.0.0.0/0"]

}


variable "sg_tags" {
  type = map
  default = {
    Name = "allow-all-terraform"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
  }
}