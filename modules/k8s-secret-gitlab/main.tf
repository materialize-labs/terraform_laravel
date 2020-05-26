resource "kubernetes_secret" "gitlab-registry" {
  metadata {
    namespace = var.namespace
    name = "gitlab-registry"
  }
  type = "kubernetes.io/dockerconfigjson"
  data = {
    ".dockerconfigjson" = jsonencode({
      "auths": {
        "registry.gitlab.com": {
          username = var.gitlab_username
          password = var.gitlab_token
        }
      }
    })
  }
}
