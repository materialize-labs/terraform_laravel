output "host" {
  value = digitalocean_kubernetes_cluster.k8s.endpoint
}

output "token" {
  value = digitalocean_kubernetes_cluster.k8s.kube_config[0].token
}

output "ca_certificate" {
  value = base64decode(
    digitalocean_kubernetes_cluster.k8s.kube_config[0].cluster_ca_certificate
  )
}

output "raw_config" {
  value = digitalocean_kubernetes_cluster.k8s.kube_config[0].raw_config
}
