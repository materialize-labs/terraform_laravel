output "name" {
  value = kubernetes_namespace.ns.metadata[0].name
}
