#---------- EC2 Instance ----------
resource "aws_instance" "ec2" {
    ami             = var.ec2_ami_id
    instance_type   = var.ec2_instance_type
    key_name        = var.ec2_key_name
    subnet_id       = var.subnet_id
    vpc_security_group_ids = [var.security_group_id]
    associate_public_ip_address = true
    
    tags = {
        Name        = var.ec2_name
        Environment = var.environment
    }
}
