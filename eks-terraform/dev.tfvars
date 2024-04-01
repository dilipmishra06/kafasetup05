# provider vars

region = "us-east-1"

vpc_cidr_block             = "10.0.0.0/16"
availability_zones         = ["us-east-1a", "us-east-1b"]
private_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnet_cidr_blocks  = ["10.0.101.0/24", "10.0.102.0/24"]

#eks iam vars

eks_cluster_iam_name = "eks-cluster-role"
eks_cluster_iam_assume_role_policy = {
  Statement = [{
    Action    = "sts:AssumeRole"
    Effect    = "Allow"
    Principal = {
      Service = "eks.amazonaws.com"
    }
  }]
  Version   = "2012-10-17"
}
eks_cluster_iam_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
]

#eks cluster vars

eks_cluster_name    = "kafka"
kubernetes_version = "1.28"

#eks nodegroup iam vars

eks_worker_nodes_iam_name = "eks-worker-nodes-role"
eks_worker_nodes_iam_assume_role_policy = {
  Statement = [{
    Action    = "sts:AssumeRole"
    Effect    = "Allow"
    Principal = {
      Service = "ec2.amazonaws.com"
    }
  }]
  Version   = "2012-10-17"
}
eks_worker_nodes_iam_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
  "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
  "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
  "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
  "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
]

#eks nodegroup vars

eks_node_group_name           = "kafka-eks-node-group"
eks_node_group_instance_types = ["t3.medium"]
eks_node_group_capacity_type  = "ON_DEMAND"
eks_node_group_desired_size   = 2
eks_node_group_max_size       = 3
eks_node_group_min_size       = 1
eks_node_group_max_unavailable = 1
eks_node_group_labels = {
  role = "general"
}

#eks addons vars

eks_addons = [
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.28.0-eksbuild.1"
  }
]
