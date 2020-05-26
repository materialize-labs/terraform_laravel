output "cluster_endpoint" {
  value = "https://${aws_elasticsearch_domain.es.endpoint}:443"
}
