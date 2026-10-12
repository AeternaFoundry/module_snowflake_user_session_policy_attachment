resource "snowflake_user_session_policy_attachment" "user_session_policy_attachments" {
  for_each = var.user_session_policy_attachments

  session_policy_name = each.value.session_policy_name
  user_name           = each.value.user_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

