resource "kubernetes_deployment" "dendri-app" {
  metadata {
    namespace = var.namespace
    name = "dendri-app"
    labels = {
      app = "dendri"
    }
  }

  spec {
    replicas = var.replicas
    selector {
      match_labels = {
        app = "dendri"
      }
    }
    template {
      metadata {
        labels = {
          app = "dendri"
        }
      }
      spec {
        image_pull_secrets {
          name = var.registry_secret
        }
        container {
          name = "app"
          image = var.image
          image_pull_policy = "Always"
          env {
            name = "APP_ENV"
            value = var.environment
          }
          env {
            name = "APP_DEBUG"
            value = var.debug
          }
          env {
            name = "APP_URL"
            value = var.url
          }
          env {
            name = "APP_KEY"
            value = var.app_key
          }
          env {
            name = "DB_HOST"
            value = var.db_host
          }
          env {
            name = "DB_PORT"
            value = var.db_port
          }
          env {
            name = "DB_DATABASE"
            value = var.db_database
          }
          env {
            name = "DB_USERNAME"
            value = var.db_username
          }
          env {
            name = "DB_PASSWORD"
            value = var.db_password
          }
          env {
            name = "AWS_ACCESS_KEY_ID"
            value = var.aws_key
          }
          env {
            name = "AWS_SECRET_ACCESS_KEY"
            value = var.aws_secret
          }
          env {
            name = "AWS_DEFAULT_REGION"
            value = var.aws_region
          }
          env {
            name = "AWS_BUCKET"
            value = var.aws_bucket
          }
          env {
            name = "GOOGLE_REDIRECT_URL"
            value = var.google_redirect
          }
          env {
            name = "GOOGLE_CLIENT_ID"
            value = var.google_id
          }
          env {
            name = "GOOGLE_CLIENT_SECRET"
            value = var.google_secret
          }
          env {
            name = "JWT_SECRET"
            value = var.jwt_secret
          }
          env {
            name = "MAIL_DRIVER"
            value = var.mail_driver
          }
          env {
            name = "MAIL_HOST"
            value = var.mail_host
          }
          env {
            name = "MAIL_PORT"
            value = var.mail_port
          }
          env {
            name = "MAIL_USERNAME"
            value = var.mail_username
          }
          env {
            name = "MAIL_PASSWORD"
            value = var.mail_password
          }
          env {
            name = "MEDIA_URL"
            value = var.media_url
          }
          env {
            name = "PASSPORT_CLIENT_ID"
            value = var.passport_id
          }
          env {
            name = "PASSPORT_CLIENT_SECRET"
            value = var.passport_secret
          }
          env {
            name = "QUEUE_CONNECTION"
            value = var.queue_connection
          }
          env {
            name = "REDIS_HOST"
            value = var.redis_host
          }
          env {
            name = "REDIS_PORT"
            value = var.redis_port
          }
          env {
            name = "REDIS_PASSWORD"
            value = var.redis_password
          }
          env {
            name = "REDIS_SCHEME"
            value = var.redis_scheme
          }
          env {
            name = "SCOUT_ELASTIC_HOST"
            value = var.scout_host
          }
          env {
            name = "SCOUT_PREFIX"
            value = var.scout_prefix
          }
        }
      }
    }
  }
}
