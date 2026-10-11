variable "golden_gate_deployment_versions_lookup" {
  description = <<EOT
Map of golden_gate_deployment_versions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - deployment_id
    - deployment_type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id  = string
    deployment_id   = optional(string)
    deployment_type = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

