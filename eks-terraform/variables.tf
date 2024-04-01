variable "region" {
  type = string
}

# VPC Variables

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string

}

variable "availability_zones" {
  description = "The list of Availability Zones to be used for the VPC."
  type        = list(string)
  
}

variable "private_subnet_cidr_blocks" {
  description = "The CIDR blocks for the private subnets within the VPC."
  type        = list(string)
  
}

variable "public_subnet_cidr_blocks" {
  description = "The CIDR blocks for the public subnets within the VPC."
  type        = list(string)
 
}


# EKS Cluster Variables


variable "eks_cluster_iam_name" {
  description = "The name for the IAM role used by the EKS cluster."
  type        = string
 
}

variable "eks_cluster_iam_assume_role_policy" {
  description = "The assume role policy for the IAM role used by the EKS cluster."
  type        = any

}

variable "eks_cluster_iam_policy_arns" {
  description = "The list of IAM policy ARNs to attach to the IAM role used by the EKS cluster."
  type        = list(string)

}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}


variable "kubernetes_version" {
  description = "The Kubernetes version for the EKS cluster."
  type        = string
 
}


# EKS Nodegroups Variables

variable "eks_worker_nodes_iam_name" {
  description = "The name for the IAM role used by the EKS worker nodes."
  type        = string
 
}

variable "eks_worker_nodes_iam_assume_role_policy" {
  description = "The assume role policy for the IAM role used by the EKS worker nodes."
  type        = any
}

variable "eks_worker_nodes_iam_policy_arns" {
  description = "The list of IAM policy ARNs to attach to the IAM role used by the EKS worker nodes."
  type        = list(string)
}

variable "eks_node_group_name" {
  description = "The name of the EKS node group."
  type        = string

}

variable "eks_node_group_instance_types" {
  description = "The instance types for the EKS node group."
  type        = list(string)

}

variable "eks_node_group_capacity_type" {
  description = "The capacity type for the EKS node group."
  type        = string
  
}

variable "eks_node_group_desired_size" {
  description = "The desired size for the EKS node group."
  type        = number
 
}

variable "eks_node_group_max_size" {
  description = "The maximum size for the EKS node group."
  type        = number
 
}

variable "eks_node_group_min_size" {
  description = "The minimum size for the EKS node group."
  type        = number
}

variable "eks_node_group_max_unavailable" {
  description = "The maximum number of unavailable nodes during updates."
  type        = number
 
}

variable "eks_node_group_labels" {
  description = "The labels for the EKS node group."
  type        = map(string)

}

# EKS addons

variable "eks_addons" {
  description = "The list of addons to be deployed on the EKS cluster."
  type        = list(object({
    name    = string
    version = string
  }))
}