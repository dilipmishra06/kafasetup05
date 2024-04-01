# VPC CIDR Block for the Amazon EKS Cluster
variable "vpc_cidr_block" {
  description = "The CIDR block for the Amazon EKS Virtual Private Cloud (VPC)."
  type        = string
}

# Availability Zones for the Amazon EKS Cluster
variable "availability_zones" {
  description = "The list of Availability Zones to be used for the Amazon EKS cluster."
  type        = list(string)
}

# CIDR Blocks for Private Subnets in the Amazon EKS VPC
variable "private_subnet_cidr_blocks" {
  description = "The CIDR blocks for the private subnets within the Amazon EKS VPC."
  type        = list(string)
}

# CIDR Blocks for Public Subnets in the Amazon EKS VPC
variable "public_subnet_cidr_blocks" {
  description = "The CIDR blocks for the public subnets within the Amazon EKS VPC."
  type        = list(string)
}
