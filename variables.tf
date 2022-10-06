variable "helm_namespace" {}

variable "helm_release_name" {
  default = "vault-agent"
}

variable "helm_chart" {
  default = "vault"
}

variable "helm_repository" {
  default = "https://helm.releases.hashicorp.com"
}

variable "helm_repository_password" {
  default = ""
}

variable "helm_repository_username" {
  default = ""
}

variable "chart_version" {
  default = "0.22.0"
}

variable "values" {
  default = ""
}
