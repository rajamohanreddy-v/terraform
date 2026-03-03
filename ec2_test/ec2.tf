module "ec2" {

    source = "../ec2_module"
    project = var.project_name
    environment = var.env
    ami_id = var.ami_id
    sg_ids = var.sg_ids
   instance_type = "t2.micro"
    tags = {
        Name = "${var.project_name}-${var.env}-${var.component}"
        Component = var.component
    }
}