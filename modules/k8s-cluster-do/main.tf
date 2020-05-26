resource "digitalocean_kubernetes_cluster" "k8s" {
  name = var.cluster_name
  region = var.cluster_region
  version = var.cluster_version
  tags = var.tags

  node_pool {
    name = var.pool_name
    size = var.instance_type
    node_count = var.instances
  }
}
