resource "kubernetes_service" "dendri-app" {
  metadata {
    namespace = var.namespace
    name = "dendri-app"
    labels = var.labels
  }
  spec {
    selector = var.labels
    port {
      name = "http"
      port = 80
      target_port = 80
    }
    port {
      name = "https"
      port = 443
      target_port = 443
    }
    type = "LoadBalancer"
  }
}
