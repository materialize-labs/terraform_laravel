variable "cluster_name" {
  description = "Name for Kubernetes cluster"
}

variable "cluster_region" {
  description = "Region for Kubernetes cluster"
}

variable "cluster_version" {
  description = "Kubernetes version"
  default = "1.17.5-do.0"
}

variable "tags" {
  description = "Tags for Kubernetes cluster"
  type = list(string)
  default = []
}

variable "pool_name" {
  description = "Pool name for Kubernetes cluster"
}

variable "instance_type" {
  description = "Type/size of instance for Kubernetes cluster"
  default = "s-2vcpu-2gb"
}

variable "instances" {
  description = "Number of instances in Kubernetes cluster"
  default = 2
}
