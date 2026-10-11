data "oci_golden_gate_deployment_versions" "golden_gate_deployment_versions_lookup" {
  for_each = var.golden_gate_deployment_versions_lookup

  compartment_id  = each.value.compartment_id
  deployment_id   = each.value.deployment_id
  deployment_type = each.value.deployment_type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

