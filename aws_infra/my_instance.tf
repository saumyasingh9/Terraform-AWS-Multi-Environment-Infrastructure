resource "aws_instance" "my-instance" {
    count = var.instance_count
    ami         = var.ami_id # Amazon Linux 2 AMI (HVM), SSD Volume Type
    instance_type = var.instance_type
tags = {
        Name = "${var.my-env}-tws-free-devops-bootcamp-instance"
    }
}