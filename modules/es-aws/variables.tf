variable "cluster_name" {
  description = "Name for ElasticSearch cluster"
}

variable "es_version" {
  description = "ElasticSearch version"
  default = "6.8"
}

variable "volume_size" {
  description = "EBS volume size for ElasticSearch cluster"
  default = 20
}

variable "instance_type" {
  description = "Instance size for ElasticSearch cluster"
  default = "t2.small.elasticsearch"
}

variable "instances" {
  description = "Number of instances for ElasticSearch cluster"
  default = 2
}
