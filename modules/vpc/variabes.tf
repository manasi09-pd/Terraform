variable "name" {
  description = "Name for the VPC and resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDRs for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDRs for private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

