output "name" {
  value = kubernetes_deployment.dendri-app.metadata[0].name
}

output "labels" {
  value = kubernetes_deployment.dendri-app.metadata[0].labels
}

output "url" {
  value = var.url
}
