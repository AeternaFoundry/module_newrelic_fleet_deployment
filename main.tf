resource "newrelic_fleet_deployment" "fleet_deployments" {
  for_each = var.fleet_deployments

  fleet_id        = each.value.fleet_id
  name            = each.value.name
  description     = each.value.description
  organization_id = each.value.organization_id
  tags            = each.value.tags

  dynamic "agent" {
    for_each = each.value.agent != null ? each.value.agent : []
    content {
      agent_type               = agent.value.agent_type
      configuration_version_id = agent.value.configuration_version_id
      version                  = agent.value.version
    }
  }
}

