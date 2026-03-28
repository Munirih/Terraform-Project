variable "ec2_name" {
  description = "The name of the EC2 instance"
  type        = string
}

variable "ec2_ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string 
}

variable "ec2_instance_type" {
  description = "The type of EC2 instance to use"
  type        = string
  default     = "t3.micro"
}

variable "ec2_key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "my-key-pair"
}

variable "vpc_id" {
  description = "The ID of the VPC to launch the EC2 instance in"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the EC2 instance in"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance"
  type        = string
}

variable "environment" {
    description = "Enviroment tag (dev, staging, prod)"
    type        = string
    default     = "dev"
}