#
# Install BlackBox Exporter using Helm
#

resource "helm_release" "prometheus_blackbox_exporter" {
  name       = var.helm_release_name
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus-blackbox-exporter"
  version    = var.helm_release_version
  namespace  = var.namespace_name

  set {
    name  = "serviceMonitor.enabled"
    value = var.service_monitor
  }

  set {
    name  = "podMonitoring.enabled"
    value = var.pod_monitoring
  }
}

#
# Walrus information
#

locals {
  context = var.context
}