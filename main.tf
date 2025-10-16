terraform {
  required_version = ">= 1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source               = "./modules/vpc"
  name                 = var.name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "iam" {
  source   = "./modules/iam"
  iam_user = var.iam_user
}

module "eks" {
  source                      = "./modules/eks"
  cluster_name                = var.cluster_name
  cluster_version             = var.cluster_version
  vpc_id                      = module.vpc.vpc_id
  subnet_ids                  = module.vpc.public_subnet_ids
  node_group_desired_capacity = var.node_group_desired_capacity
  node_group_max_capacity     = var.node_group_max_capacity
  node_group_min_capacity     = var.node_group_min_capacity
  iam_user                    = module.iam.iam_user_name
}




