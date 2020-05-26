output "ip" {
  description = "IP address for ingress to Dendri App"
  value = module.laravel.ip
}

output "url" {
  value = module.laravel.url
}
