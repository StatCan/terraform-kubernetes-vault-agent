resource "helm_release" "vault_agent" {
  name = var.helm_release_name

  repository          = var.helm_repository
  repository_username = var.helm_repository_username
  repository_password = var.helm_repository_password

  chart     = var.helm_chart
  version   = var.chart_version
  namespace = var.helm_namespace
  timeout   = 1200

  set {
    name = "injector.enabled"
    value = "true"
  }

  set {
    name = "server.enabled"
    value = "false"
  }

  values = [
    var.values,
  ]

}
