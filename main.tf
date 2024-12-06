#
# Install BlackBox Exporter using Helm
#

resource "helm_release" "prometheus_blackbox_exporter" {
  name       = var.helm_release_name
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus-blackbox-exporter"
  version    = var.helm_release_version
  namespace  = var.namespace_name

  values = [
    templatefile("${path.module}/values.yaml.tpl", {
      service_monitor = var.service_monitor,
      pod_monitoring  = var.pod_monitoring,
      request_memory  = var.resources["requests"]["memory"],
      limits_memory   = var.resources["limits"]["memory"],
      request_cpu     = var.resources["requests"]["cpu"],
      limits_cpu      = var.resources["limits"]["cpu"]
    })
  ]
}

#
# Walrus information
#

locals {
  context = var.context
}

module "submodule" {
  source = "./modules/submodule"

  message = "Hello, submodule"
}