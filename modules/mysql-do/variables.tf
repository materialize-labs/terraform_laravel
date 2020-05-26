variable "cluster_name" {
  description = "Name of the MySQL cluster"
}

variable "cluster_region" {
  description = "Cluster region"
}

variable "mysql_version" {
  description = "MySQL version: 5 or 8"
  default = 8
}

variable "instance_type" {
  description = "Type of instance for the cluster"
  default = "db-s-1vcpu-2gb"
}

variable "instances" {
  description = "Number of instances for the cluster"
  default = 2
  type = number
}

variable "username" {
  description = "MySQL username"
}

variable "database_name" {
  description = "MySQL database name"
}
