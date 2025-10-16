variable "aws_region" {
  description = "AWS region to deploy"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDRs for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDRs for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "iam_user" {
  description = "Name of IAM user to create"
  default     = "test"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for EKS cluster"
  type = string
  default     = "1.28"
}

variable "node_group_desired_capacity" {
  description = "EKS node group desired capacity"
  default     = 1
}

variable "node_group_max_capacity" {
  description = "EKS node group max capacity"
  default     = 2
}

variable "node_group_min_capacity" {
  description = "EKS node group min capacity"
  default     = 1
}

variable "name" {
  description = "Name prefix for VPC and related resources"
  default     = "eks-project" 
}

variable "availability_zones" {
  description = "List of availability zones to deploy resources in"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]  
}


