variable "ami_id" {
   
    default = "ami-0220d79f3f480ecf5"
}

variable "sg_ids" {

    default = ["sg-076ec9ad23dab2b28"]
  
}

variable "project_name" {

    default = "roboshop"
  
}

variable "component" {

    type = string

    default = "catalogue"
  
}

variable "env" {
    default = "dev"
  
}

variable "instance_type" {
  
  default = {}
}