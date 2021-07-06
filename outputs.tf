output "helm_namespace" {
  value = var.helm_namespace
}

output "release_revision" {
  value = helm_release.vault_agent.metadata.0.revision
}
