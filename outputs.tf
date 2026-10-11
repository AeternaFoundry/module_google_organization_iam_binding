output "organization_iam_bindings_id" {
  description = "Map of id values across all organization_iam_bindings, keyed the same as var.organization_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_organization_iam_binding.organization_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_iam_bindings_condition" {
  description = "Map of condition values across all organization_iam_bindings, keyed the same as var.organization_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_organization_iam_binding.organization_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "organization_iam_bindings_etag" {
  description = "Map of etag values across all organization_iam_bindings, keyed the same as var.organization_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_organization_iam_binding.organization_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "organization_iam_bindings_members" {
  description = "Map of members values across all organization_iam_bindings, keyed the same as var.organization_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_organization_iam_binding.organization_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "organization_iam_bindings_org_id" {
  description = "Map of org_id values across all organization_iam_bindings, keyed the same as var.organization_iam_bindings except keys with no org_id are omitted"
  value       = { for k, v in google_organization_iam_binding.organization_iam_bindings : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "organization_iam_bindings_role" {
  description = "Map of role values across all organization_iam_bindings, keyed the same as var.organization_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_organization_iam_binding.organization_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}

