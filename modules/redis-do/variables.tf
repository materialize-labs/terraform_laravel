variable "cluster_name" {
  description = "Redis cluster name"
}

variable "instance_type" {
  description = "Instance type for Redis cluster"
  default = "db-s-1vcpu-2gb"
}

variable "cluster_region" {
  description = "Region for the Redis cluster"
}

variable "instances" {
  description = "Number of instances in Redis cluster"
  default = 2
}
