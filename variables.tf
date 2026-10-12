variable "user_session_policy_attachments" {
  description = <<EOT
Map of user_session_policy_attachments, attributes below
Required:
    - session_policy_name
    - user_name
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    session_policy_name = string
    user_name           = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

