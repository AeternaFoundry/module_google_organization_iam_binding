variable "organization_iam_bindings" {
  description = <<EOT
Map of organization_iam_bindings, attributes below
Required:
    - members
    - org_id
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members = set(string)
    org_id  = string
    role    = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

