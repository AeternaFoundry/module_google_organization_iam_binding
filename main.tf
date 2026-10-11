resource "google_organization_iam_binding" "organization_iam_bindings" {
  for_each = var.organization_iam_bindings

  members = each.value.members
  org_id  = each.value.org_id
  role    = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

