output "cluster_host" {
  value = digitalocean_database_cluster.mysql.host
}

output "cluster_private_host" {
  value = digitalocean_database_cluster.mysql.private_host
}

output "cluster_port" {
  value = digitalocean_database_cluster.mysql.port
}

output "db_username" {
  value = digitalocean_database_user.mysql-user.name
}

output "db_password" {
  value = digitalocean_database_user.mysql-user.password
  sensitive = true
}

output "db_name" {
  value = digitalocean_database_db.mysql-db.name
}
