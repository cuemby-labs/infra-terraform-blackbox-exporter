#
# BlackBox Exporter
#

variable "namespace_name" {
  description = "Namespace where BlackBox Exporter will be installed."
  type        = string
  default     = "prometheus-system"
}

variable "helm_release_name" {
  description = "Name for the BlackBox Exporter Helm release."
  type        = string
  default     = "prometheus-blackbox-exporter"
}

variable "helm_release_version" {
  description = "Version of the BlackBox Exporter Helm chart."
  type        = string
  default     = "8.17.0"
}

variable "service_monitor" {
  description = "Enable or disable serviceMonitor."
  type        = bool
  default     = true
}

variable "pod_monitoring" {
  description = "Enable or disable podMonitoring."
  type        = bool
  default     = true
}

#
# Walrus Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}