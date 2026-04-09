variable "region" {
  description = "AWS region to deploy into"
  type        = string
}

variable "cluster_name" {
  description = "Name for the EKS cluster and associated resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "List of AZs to use (must have at least 2)"
  type        = list(string)
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS worker nodes"
  type        = string
}

variable "node_count" {
  description = "Number of EKS worker nodes"
  type        = number
}