variable "registered_models" {
  description = <<EOT
Map of registered_models, attributes below
Optional:
    - browse_only
    - catalog_name
    - comment
    - created_at
    - created_by
    - full_name
    - metastore_id
    - name
    - owner
    - schema_name
    - storage_location
    - updated_at
    - updated_by
    - aliases (block):
        - alias_name (optional)
        - catalog_name (optional)
        - id (optional)
        - model_name (optional)
        - schema_name (optional)
        - version_num (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    browse_only      = optional(bool)
    catalog_name     = optional(string)
    comment          = optional(string)
    created_at       = optional(number)
    created_by       = optional(string)
    full_name        = optional(string)
    metastore_id     = optional(string)
    name             = optional(string)
    owner            = optional(string)
    schema_name      = optional(string)
    storage_location = optional(string)
    updated_at       = optional(number)
    updated_by       = optional(string)
    aliases = optional(list(object({
      alias_name   = optional(string)
      catalog_name = optional(string)
      id           = optional(string)
      model_name   = optional(string)
      schema_name  = optional(string)
      version_num  = optional(number)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

