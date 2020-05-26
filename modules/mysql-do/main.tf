# DigitalOcean MySQL database cluster
resource "digitalocean_database_cluster" "mysql" {
  name = var.cluster_name
  engine = "mysql"
  version = var.mysql_version
  size = var.instance_type
  region = var.cluster_region
  node_count = var.instances
}

# Create additional user with native plugin
# to avoid issues with MySQL default auth plugin
resource "digitalocean_database_user" "mysql-user" {
  cluster_id = digitalocean_database_cluster.mysql.id
  name = var.username
  mysql_auth_plugin = "mysql_native_password"
}

# Create database
resource "digitalocean_database_db" "mysql-db" {
  cluster_id = digitalocean_database_cluster.mysql.id
  name = var.database_name
}
