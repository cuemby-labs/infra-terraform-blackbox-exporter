# Enable Service Monitoring
serviceMonitor:
  enabled: ${service_monitor}

# Enable Pod Monitoring
podMonitoring:
  enabled: ${pod_monitoring}

# Pod resources
resources:
  limits:
    cpu: ${limits_cpu}
    memory: ${limits_memory}
  requests:
    cpu: ${request_cpu}
    memory: ${request_memory}