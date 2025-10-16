output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
    value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "iam_user_name" {
  value = module.iam.iam_user_name
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_ca_certificate" {
  value = module.eks.cluster_ca_certificate
}

