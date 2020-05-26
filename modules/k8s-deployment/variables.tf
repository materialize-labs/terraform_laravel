variable "namespace" {
  description = "Namespace for Dendri app deployment"
}

variable "replicas" {
  description = "Number of replicas for Dendri app deployment"
}

variable "image" {
  description = "Image for Dendri deployment"
}

variable "registry_secret" {
  description = "Name of secret containing Docker registry credentials"
}

variable "environment" {
  description = "App environment"
}

variable "debug" {
  description = "Debug mode"
  default = false
}

variable "url" {}
variable "app_key" {}
variable "db_host" {}
variable "db_port" {}
variable "db_username" {}
variable "db_password" {}
variable "db_database" {}
variable "google_id" {}
variable "google_secret" {}
variable "google_redirect" {}
variable "aws_key" {}
variable "aws_secret" {}
variable "aws_region" {}
variable "aws_bucket" {}
variable "jwt_secret" {}
variable "mail_driver" {}
variable "mail_host" {}
variable "mail_port" {}
variable "mail_username" {}
variable "mail_password" {}
variable "media_url" {}
variable "passport_id" {}
variable "passport_secret" {}
variable "queue_connection" {}
variable "redis_host" {}
variable "redis_port" {}
variable "redis_password" {}
variable "redis_scheme" {}
variable "scout_host" {}
variable "scout_prefix" {}

