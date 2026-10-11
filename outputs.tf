output "golden_gate_deployment_versions_lookup_id" {
  description = "Map of id values across all golden_gate_deployment_versions_lookup, keyed the same as var.golden_gate_deployment_versions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_versions.golden_gate_deployment_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "golden_gate_deployment_versions_lookup_compartment_id" {
  description = "Map of compartment_id values across all golden_gate_deployment_versions_lookup, keyed the same as var.golden_gate_deployment_versions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_versions.golden_gate_deployment_versions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "golden_gate_deployment_versions_lookup_deployment_id" {
  description = "Map of deployment_id values across all golden_gate_deployment_versions_lookup, keyed the same as var.golden_gate_deployment_versions_lookup except keys with no deployment_id are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_versions.golden_gate_deployment_versions_lookup : k => v.deployment_id if v.deployment_id != null && length(v.deployment_id) > 0 }
}
output "golden_gate_deployment_versions_lookup_deployment_type" {
  description = "Map of deployment_type values across all golden_gate_deployment_versions_lookup, keyed the same as var.golden_gate_deployment_versions_lookup except keys with no deployment_type are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_versions.golden_gate_deployment_versions_lookup : k => v.deployment_type if v.deployment_type != null && length(v.deployment_type) > 0 }
}
output "golden_gate_deployment_versions_lookup_deployment_version_collection" {
  description = "Map of deployment_version_collection values across all golden_gate_deployment_versions_lookup, keyed the same as var.golden_gate_deployment_versions_lookup except keys with no deployment_version_collection are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_versions.golden_gate_deployment_versions_lookup : k => v.deployment_version_collection if v.deployment_version_collection != null && length(v.deployment_version_collection) > 0 }
}
output "golden_gate_deployment_versions_lookup_filter" {
  description = "Map of filter values across all golden_gate_deployment_versions_lookup, keyed the same as var.golden_gate_deployment_versions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_versions.golden_gate_deployment_versions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

