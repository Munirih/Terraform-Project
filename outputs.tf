output "vpc_id" {
    description = "ID of the VPC"
    value       = module.vpc.vpc_id
}

output "vpc_name" {
    description = "Name of the VPC"
    value       = module.vpc.vpc_name
}

output "public_subnet_ids" {
    description = "List of public subnet IDs"
    value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
    description = "List of private subnet IDs"
    value       = module.vpc.private_subnet_ids
}

output "security_group_id" {
    description = "ID of the security group"
    value       = module.security_group.security_group_id
}

output "instance_id" {
    description = "ID of the EC2 instance"
    value       = module.ec2-instance.instance_id
}

output "instance_public_ip" {
    description = "Public IP address of the EC2 instance"
    value       = module.ec2-instance.instance_public_ip
}