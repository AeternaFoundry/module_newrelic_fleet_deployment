variable "fleet_deployments" {
  description = <<EOT
Map of fleet_deployments, attributes below
Required:
    - fleet_id
    - name
Optional:
    - description
    - organization_id
    - tags
    - agent (block):
        - agent_type (required)
        - configuration_version_id (required)
        - version (required)
EOT

  type = map(object({
    fleet_id        = string
    name            = string
    description     = optional(string)
    organization_id = optional(string)
    tags            = optional(list(string))
    agent = optional(list(object({
      agent_type               = string
      configuration_version_id = string
      version                  = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fleet_deployments : (
        v.agent == null || alltrue([for item in v.agent : (contains(["NRInfra", "NRDOT", "FluentBit", "NRPrometheusAgent"], item.agent_type))])
      )
    ])
    error_message = "must be one of: \"NRInfra\", \"NRDOT\", \"FluentBit\", \"NRPrometheusAgent\""
  }
}

