output "storage_integration_name" {
  value       = snowflake_storage_integration.storage_integration.name
  description = "The Storage integration name."
}

output "storage_id" {
  value       = snowflake_storage_integration.storage_integration.id
  description = "The Storage integration ID."
}

output "storage_aws_role_arn" {
  value       = snowflake_storage_integration.storage_integration.storage_aws_role_arn
  description = "The Snowflake user that will attempt to assume the AWS role."
}

output "comment" {
  value       = snowflake_storage_integration.storage_integration.comment
  description = "The comment for the Storage integration."
}

output "enabled" {
  value       = snowflake_storage_integration.storage_integration.enabled
  description = "The enable status for the Storage integration."
}

output "type" {
  value       = snowflake_storage_integration.storage_integration.type
  description = "The type of the Storage integration."
}

output "storage_provider" {
  value       = snowflake_storage_integration.storage_integration.storage_provider
  description = "The Storage integration provider."
}


output "storage_allowed_locations" {
  value       = snowflake_storage_integration.storage_integration.storage_allowed_locations
  description = "Storage integration allowed buckets."
}

output "privilege" {
  value       = snowflake_integration_grant.storage_integration_grant.privilege
  description = "The privilege to grant on the integration."
}

output "roles" {
  value       = snowflake_integration_grant.storage_integration_grant.roles
  description = "Grants privilege to these roles."
}

output "with_grant_option" {
  value       = snowflake_integration_grant.storage_integration_grant.with_grant_option
  description = "When this is set to true, allows the recipient role to grant the privileges to other roles."
}
