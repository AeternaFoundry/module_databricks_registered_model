resource "databricks_registered_model" "registered_models" {
  for_each = var.registered_models

  browse_only      = each.value.browse_only
  catalog_name     = each.value.catalog_name
  comment          = each.value.comment
  created_at       = each.value.created_at
  created_by       = each.value.created_by
  full_name        = each.value.full_name
  metastore_id     = each.value.metastore_id
  name             = each.value.name
  owner            = each.value.owner
  schema_name      = each.value.schema_name
  storage_location = each.value.storage_location
  updated_at       = each.value.updated_at
  updated_by       = each.value.updated_by

  dynamic "aliases" {
    for_each = each.value.aliases != null ? each.value.aliases : []
    content {
      alias_name   = aliases.value.alias_name
      catalog_name = aliases.value.catalog_name
      id           = aliases.value.id
      model_name   = aliases.value.model_name
      schema_name  = aliases.value.schema_name
      version_num  = aliases.value.version_num
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

