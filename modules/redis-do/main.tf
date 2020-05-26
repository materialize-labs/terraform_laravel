# Redis cluster
resource "digitalocean_database_cluster" "redis" {
  name = var.cluster_name
  engine = "redis"
  version = "5"
  size = var.instance_type
  region = var.cluster_region
  node_count = var.instances
}
