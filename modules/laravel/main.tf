module "mysql" {
  source = "../mysql-do"
  cluster_name = "${var.project}-mysql-${var.env}"
  cluster_region = var.do_region
  instances = var.mysql_instances
  instance_type = var.mysql_instance_type
  username = var.project
  database_name = var.project
}

module "redis" {
  source = "../redis-do"
  cluster_name = "${var.project}-redis-${var.env}"
  cluster_region = var.do_region
  instances = var.redis_instances
  instance_type = var.redis_instance_type
}

module "elasticsearch" {
  source = "../es-aws"
  cluster_name = "${var.project}-es-${var.env}"
  instances = var.es_instances
  instance_type = var.es_instance_type
}

module "k8s-cluster" {
  source = "../k8s-cluster-do"
  cluster_name = "${var.project}-k8s-${var.env}"
  cluster_region = var.do_region
  pool_name = "${var.project}-k8s-${var.env}-pool"
  instances = var.k8s_instances
  instance_type = var.k8s_instance_type
}

provider "kubernetes" {
  load_config_file = false
  host = module.k8s-cluster.host
  token = module.k8s-cluster.token
  cluster_ca_certificate = module.k8s-cluster.ca_certificate
}

module "gitlab_kubeconfig" {
  source = "../gitlab"
  project = var.gitlab_project
  environment = var.env
  kubeconfig = module.k8s-cluster.raw_config
}

module "namespace" {
  source = "../k8s-namespace"
  name = var.project
}

module "gitlab-registry-secret" {
  source = "../k8s-secret-gitlab"
  namespace = module.namespace.name
  gitlab_username = var.gitlab_username
  gitlab_token = var.gitlab_token
}

module "deployment" {
  source = "../k8s-deployment"
  namespace = module.namespace.name
  replicas = var.project_replicas

  image = "registry.gitlab.com/${var.gitlab_project}:latest"
  registry_secret = module.gitlab-registry-secret.secret_name

  environment       = var.env
  debug             = var.debug
  url               = "https://${var.domain_record}.${var.domain}"
  app_key           = var.app_key
  db_host           = module.mysql.cluster_private_host
  db_port           = module.mysql.cluster_port
  db_username       = module.mysql.db_username
  db_password       = module.mysql.db_password
  db_database       = module.mysql.db_name
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
  redis_host        = module.redis.cluster_private_host
  redis_port        = module.redis.cluster_port
  redis_password    = module.redis.cluster_password
  redis_scheme      = "tls"
  scout_host        = module.elasticsearch.cluster_endpoint
  scout_prefix      = ""
}

module "service" {
  source = "../k8s-service"
  namespace = module.namespace.name
  labels = module.deployment.labels
}

module "domain" {
  source = "../domain-do"
  domain = var.domain
  domain_record = var.domain_record
  ip = module.service.ip
}
