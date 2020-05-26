output "secret_name" {
  value = kubernetes_secret.gitlab-registry.metadata[0].name
}
