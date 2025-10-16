variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.28"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS cluster"
  type        = list(string)
}

variable "node_group_desired_capacity" {
  description = "Desired capacity for EKS node group"
  type        = number
}

variable "node_group_max_capacity" {
  description = "Max capacity for EKS node group"
  type        = number
}

variable "node_group_min_capacity" {
  description = "Min capacity for EKS node group"
  type        = number
}

variable "iam_user" {
  description = "IAM user name (optional)"
  type        = string
  default     = ""
}

