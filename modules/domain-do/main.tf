resource "digitalocean_record" "record" {
  domain = var.domain
  type = "A"
  name = var.domain_record
  value = var.ip
}
