output "node_group_name" {
  value = aws_eks_node_group.private_nodes.node_group_name
}

output "node_group_arn" {
  value = aws_eks_node_group.private_nodes.arn
}
