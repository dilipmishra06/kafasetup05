
resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  role_arn = var.role_arn
  version = var.kubernetes_version

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}



