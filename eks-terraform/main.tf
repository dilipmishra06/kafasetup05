provider "aws" {
  region = var.region
}

module "eks_vpc" {
  source = "./modules/network"

  vpc_cidr_block             = var.vpc_cidr_block
  availability_zones         = var.availability_zones
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
}

module "eks_cluster_iam" {
  source = "./modules/iam"

  name              = var.eks_cluster_iam_name
  assume_role_policy = var.eks_cluster_iam_assume_role_policy
  policy_arns       = var.eks_cluster_iam_policy_arns
}

module "eks_cluster" {
  source       = "./modules/eks-cluster"
  cluster_name = var.eks_cluster_name
  role_arn     = module.eks_cluster_iam.role_arn
  subnet_ids   = module.eks_vpc.all_subnet_ids
  kubernetes_version = var.kubernetes_version

  depends_on = [module.eks_cluster_iam, module.eks_vpc]
}

module "eks_worker_nodes_iam" {
  source = "./modules/iam"

  name              = var.eks_worker_nodes_iam_name
  assume_role_policy = var.eks_worker_nodes_iam_assume_role_policy
  policy_arns       = var.eks_worker_nodes_iam_policy_arns
}

module "eks_node_group" {
  source            = "./modules/eks-node-groups"
  cluster_name      = var.eks_cluster_name
  node_group_name   = var.eks_node_group_name
  node_role_arn     = module.eks_worker_nodes_iam.role_arn
  subnet_ids        = module.eks_vpc.private_subnet_ids
  instance_types    = var.eks_node_group_instance_types
  capacity_type     = var.eks_node_group_capacity_type
  desired_size      = var.eks_node_group_desired_size
  max_size          = var.eks_node_group_max_size
  min_size          = var.eks_node_group_min_size
  max_unavailable   = var.eks_node_group_max_unavailable
  labels            = var.eks_node_group_labels
  depends_on        = [module.eks_worker_nodes_iam, module.eks_cluster]
}


module "eks_addons" {
  source       = "./modules/addons"
  cluster_name = var.eks_cluster_name
  addons       = var.eks_addons
  depends_on   = [module.eks_node_group]
}
