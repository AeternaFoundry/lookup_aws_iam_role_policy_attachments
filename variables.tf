variable "iam_role_policy_attachments_lookup" {
  description = <<EOT
Map of iam_role_policy_attachments_lookup, attributes below
Required:
    - role_name
Optional:
    - path_prefix
EOT

  type = map(object({
    role_name   = string
    path_prefix = optional(string)
  }))
}

