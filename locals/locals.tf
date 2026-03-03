locals {
    instance_name = "${var.name}-${var.environment}"
    instance_type = "t2.micro"
     common_tags = {
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"  
        
 }
final_tags = merge(local.common_tags, var.ec2_tags)
ami_id = data.aws_ami.joindevops.id
}