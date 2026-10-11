data "aws_iam_role_policy_attachments" "iam_role_policy_attachments_lookup" {
  for_each = var.iam_role_policy_attachments_lookup

  role_name   = each.value.role_name
  path_prefix = each.value.path_prefix
}

