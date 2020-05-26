output "cluster_host" {
  value = digitalocean_database_cluster.redis.host
}

output "cluster_private_host" {
  value = digitalocean_database_cluster.redis.private_host
}

output "cluster_port" {
  value = digitalocean_database_cluster.redis.port
}

output "cluster_password" {
  value = digitalocean_database_cluster.redis.password
}
