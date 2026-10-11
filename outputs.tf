output "fleet_deployments_id" {
  description = "Map of id values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no id are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_deployments_agent" {
  description = "Map of agent values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no agent are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.agent if v.agent != null && length(v.agent) > 0 }
}
output "fleet_deployments_deployment_id" {
  description = "Map of deployment_id values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no deployment_id are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.deployment_id if v.deployment_id != null && length(v.deployment_id) > 0 }
}
output "fleet_deployments_description" {
  description = "Map of description values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no description are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "fleet_deployments_fleet_id" {
  description = "Map of fleet_id values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no fleet_id are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.fleet_id if v.fleet_id != null && length(v.fleet_id) > 0 }
}
output "fleet_deployments_name" {
  description = "Map of name values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no name are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_deployments_organization_id" {
  description = "Map of organization_id values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no organization_id are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "fleet_deployments_phase" {
  description = "Map of phase values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no phase are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.phase if v.phase != null && length(v.phase) > 0 }
}
output "fleet_deployments_tags" {
  description = "Map of tags values across all fleet_deployments, keyed the same as var.fleet_deployments except keys with no tags are omitted"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

