resource "gitlab_project_variable" "kubeconfig" {
  project = var.project
  key = "KUBECONFIG_${var.environment == "production" ? "MASTER" : upper(replace(var.environment, "-", ""))}"
  value = var.kubeconfig
  environment_scope = "*"
  variable_type = "file"
}
