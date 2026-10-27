output "fleet_deployments_id" {
  description = "Map of id values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.id }
}
output "fleet_deployments_agent" {
  description = "Map of agent values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.agent }
}
output "fleet_deployments_deployment_id" {
  description = "Map of deployment_id values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.deployment_id }
}
output "fleet_deployments_description" {
  description = "Map of description values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.description }
}
output "fleet_deployments_fleet_id" {
  description = "Map of fleet_id values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.fleet_id }
}
output "fleet_deployments_name" {
  description = "Map of name values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.name }
}
output "fleet_deployments_organization_id" {
  description = "Map of organization_id values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.organization_id }
}
output "fleet_deployments_phase" {
  description = "Map of phase values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.phase }
}
output "fleet_deployments_tags" {
  description = "Map of tags values across all fleet_deployments, keyed the same as var.fleet_deployments"
  value       = { for k, v in newrelic_fleet_deployment.fleet_deployments : k => v.tags }
}

