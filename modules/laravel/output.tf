output "ip" {
  description = "IP address for ingress to the Laravel app"
  value = module.service.ip
}

output "url" {
  value = module.deployment.url
}
