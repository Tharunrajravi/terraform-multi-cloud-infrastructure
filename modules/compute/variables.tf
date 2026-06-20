variable "vpc_id" {
  description = "VPC ID where the security group will be created."
  type        = string
}

variable "subnet_id" {
  description = "Public subnet ID for the EC2 instance."
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
}

variable "project_name" {
  description = "Project name."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}
