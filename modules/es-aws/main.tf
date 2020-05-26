resource "aws_elasticsearch_domain" "es" {
  domain_name = var.cluster_name
  elasticsearch_version = var.es_version

  ebs_options {
    ebs_enabled = true
    volume_size = var.volume_size
  }

  cluster_config {
    instance_type = var.instance_type
    instance_count = var.instances
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }
}
