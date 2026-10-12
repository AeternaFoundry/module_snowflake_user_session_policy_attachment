output "user_session_policy_attachments_id" {
  description = "Map of id values across all user_session_policy_attachments, keyed the same as var.user_session_policy_attachments except keys with no id are omitted"
  value       = { for k, v in snowflake_user_session_policy_attachment.user_session_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_session_policy_attachments_session_policy_name" {
  description = "Map of session_policy_name values across all user_session_policy_attachments, keyed the same as var.user_session_policy_attachments except keys with no session_policy_name are omitted"
  value       = { for k, v in snowflake_user_session_policy_attachment.user_session_policy_attachments : k => v.session_policy_name if v.session_policy_name != null && length(v.session_policy_name) > 0 }
}
output "user_session_policy_attachments_user_name" {
  description = "Map of user_name values across all user_session_policy_attachments, keyed the same as var.user_session_policy_attachments except keys with no user_name are omitted"
  value       = { for k, v in snowflake_user_session_policy_attachment.user_session_policy_attachments : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

