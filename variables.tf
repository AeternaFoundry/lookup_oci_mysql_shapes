variable "mysql_shapes_lookup" {
  description = <<EOT
Map of mysql_shapes_lookup, attributes below
Required:
    - compartment_id
Optional:
    - availability_domain
    - is_supported_for
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    availability_domain = optional(string)
    is_supported_for    = optional(list(string))
    name                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

