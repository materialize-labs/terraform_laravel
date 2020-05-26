output "name" {
  value = kubernetes_service.dendri-app.metadata[0].name
}

output "ip" {
  description = "IP address for ingress to Dendri App"
  value = kubernetes_service.dendri-app.load_balancer_ingress[0].ip
}
