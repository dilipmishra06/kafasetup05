variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "role_arn" {
  description = "The IAM role ARN for the EKS cluster."
  type        = string
}

variable "subnet_ids" {
  description = "The IDs of the subnets for the EKS cluster."
  type        = list(string)
}

variable "kubernetes_version" {
  description = "Version of Kubernetes"
  type = string
  
}
