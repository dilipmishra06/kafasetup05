
output "eks_cluster_endpoint" {
  description = "Endpoint URL of the EKS cluster"
  value       = module.eks_cluster.cluster_endpoint
}

output "eks_cluster_arn" {
  description = "ARN of the EKS cluster"
  value       = module.eks_cluster.cluster_arn
}

output "eks_node_group_arn" {
  description = "ARN of the EKS node group"
  value       = module.eks_node_group.node_group_arn
}