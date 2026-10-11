output "iam_role_policy_attachments_lookup_attached_policies" {
  description = "Map of attached_policies values across all iam_role_policy_attachments_lookup, keyed the same as var.iam_role_policy_attachments_lookup"
  value       = { for k, v in data.aws_iam_role_policy_attachments.iam_role_policy_attachments_lookup : k => v.attached_policies if v.attached_policies != null && length(v.attached_policies) > 0 }
}
output "iam_role_policy_attachments_lookup_path_prefix" {
  description = "Map of path_prefix values across all iam_role_policy_attachments_lookup, keyed the same as var.iam_role_policy_attachments_lookup"
  value       = { for k, v in data.aws_iam_role_policy_attachments.iam_role_policy_attachments_lookup : k => v.path_prefix if v.path_prefix != null && length(v.path_prefix) > 0 }
}
output "iam_role_policy_attachments_lookup_role_name" {
  description = "Map of role_name values across all iam_role_policy_attachments_lookup, keyed the same as var.iam_role_policy_attachments_lookup"
  value       = { for k, v in data.aws_iam_role_policy_attachments.iam_role_policy_attachments_lookup : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}

