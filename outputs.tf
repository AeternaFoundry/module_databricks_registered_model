output "registered_models_id" {
  description = "Map of id values across all registered_models, keyed the same as var.registered_models except keys with no id are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.id if v.id != null && length(v.id) > 0 }
}
output "registered_models_aliases" {
  description = "Map of aliases values across all registered_models, keyed the same as var.registered_models except keys with no aliases are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.aliases if v.aliases != null && length(v.aliases) > 0 }
}
output "registered_models_browse_only" {
  description = "Map of browse_only values across all registered_models, keyed the same as var.registered_models except keys with no browse_only are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.browse_only if v.browse_only != null }
}
output "registered_models_catalog_name" {
  description = "Map of catalog_name values across all registered_models, keyed the same as var.registered_models except keys with no catalog_name are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "registered_models_comment" {
  description = "Map of comment values across all registered_models, keyed the same as var.registered_models except keys with no comment are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "registered_models_created_at" {
  description = "Map of created_at values across all registered_models, keyed the same as var.registered_models except keys with no created_at are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.created_at if v.created_at != null }
}
output "registered_models_created_by" {
  description = "Map of created_by values across all registered_models, keyed the same as var.registered_models except keys with no created_by are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "registered_models_full_name" {
  description = "Map of full_name values across all registered_models, keyed the same as var.registered_models except keys with no full_name are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "registered_models_metastore_id" {
  description = "Map of metastore_id values across all registered_models, keyed the same as var.registered_models except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "registered_models_name" {
  description = "Map of name values across all registered_models, keyed the same as var.registered_models except keys with no name are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.name if v.name != null && length(v.name) > 0 }
}
output "registered_models_owner" {
  description = "Map of owner values across all registered_models, keyed the same as var.registered_models except keys with no owner are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "registered_models_provider_config" {
  description = "Map of provider_config values across all registered_models, keyed the same as var.registered_models except keys with no provider_config are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "registered_models_schema_name" {
  description = "Map of schema_name values across all registered_models, keyed the same as var.registered_models except keys with no schema_name are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "registered_models_storage_location" {
  description = "Map of storage_location values across all registered_models, keyed the same as var.registered_models except keys with no storage_location are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.storage_location if v.storage_location != null && length(v.storage_location) > 0 }
}
output "registered_models_updated_at" {
  description = "Map of updated_at values across all registered_models, keyed the same as var.registered_models except keys with no updated_at are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.updated_at if v.updated_at != null }
}
output "registered_models_updated_by" {
  description = "Map of updated_by values across all registered_models, keyed the same as var.registered_models except keys with no updated_by are omitted"
  value       = { for k, v in databricks_registered_model.registered_models : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}

