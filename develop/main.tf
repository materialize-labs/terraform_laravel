provider "digitalocean" {
  token = var.do_token
}

provider "aws" {
  region = var.aws_region
  access_key = var.aws_key
  secret_key = var.aws_secret
}

provider "gitlab" {
  token = var.gitlab_token
}

module "laravel" {
  source = "../modules/laravel"

  project               = var.project_name
  gitlab_project        = var.gitlab_project
  gitlab_username       = var.gitlab_username
  gitlab_token          = var.gitlab_token
  domain                = var.domain
  domain_record         = var.domain_record

  do_region             = var.do_region
  mysql_instances       = 1
  mysql_instance_type   = "db-s-1vcpu-1gb"
  redis_instances       = 1
  redis_instance_type   = "db-s-1vcpu-1gb"
  es_instances          = 1
  es_instance_type      = "t2.small.elasticsearch"
  k8s_instances         = 1
  k8s_instance_type     = "s-1vcpu-2gb"
  project_replicas      = 1

  env               = var.env
  debug             = true
  app_key           = var.app_key
  google_id         = var.google_id
  google_secret     = var.google_secret
  google_redirect   = var.google_redirect
  aws_key           = var.aws_key
  aws_secret        = var.aws_secret
  aws_region        = var.aws_region
  aws_bucket        = var.aws_bucket
  jwt_secret        = var.jwt_secret
  mail_driver       = var.mail_driver
  mail_host         = var.mail_host
  mail_port         = var.mail_port
  mail_username     = var.mail_username
  mail_password     = var.mail_password
  media_url         = var.media_url
  passport_id       = var.passport_id
  passport_secret   = var.passport_secret
  queue_connection  = var.queue_connection
}
