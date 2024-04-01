variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "addons" {
  description = "The list of addons to enable for the EKS cluster."
  type        = list(object({
    name    = string
    version = string
  }))
}