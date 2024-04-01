variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group."
  type        = string
}

variable "node_role_arn" {
  description = "The ARN of the IAM role for the EKS node group."
  type        = string
}

variable "subnet_ids" {
  description = "The IDs of the subnets for the EKS node group."
  type        = list(string)
}

variable "instance_types" {
  description = "The instance types for the EKS node group."
  type        = list(string)
}

variable "capacity_type" {
  description = "The capacity type for the EKS node group."
  type        = string
  default     = "ON_DEMAND"
}

variable "desired_size" {
  description = "The desired number of nodes in the EKS node group."
  type        = number
  default     = 1
}

variable "max_size" {
  description = "The maximum number of nodes in the EKS node group."
  type        = number
  default     = 3
}

variable "min_size" {
  description = "The minimum number of nodes in the EKS node group."
  type        = number
  default     = 1
}

variable "max_unavailable" {
  description = "The maximum number of unavailable nodes during an update."
  type        = number
  default     = 1
}

variable "labels" {
  description = "Labels to apply to the EKS node group."
  type        = map(string)
  default     = {}
}
