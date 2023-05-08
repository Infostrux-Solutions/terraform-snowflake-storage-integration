resource "snowflake_storage_integration" "storage_integration" {
  name    = var.storage_integration_name
  comment = var.comment
  type    = var.type

  enabled = var.enabled

  storage_provider     = var.storage_provider
  storage_aws_role_arn = var.storage_provider == "S3" ? var.storage_aws_role_arn : null
  azure_tenant_id      = var.storage_provider == "AZURE" ? var.azure_tentant_id : null

  storage_allowed_locations = [
    for bucket in var.storage_allowed_locations :
    var.storage_provider == "S3" ? "s3://${bucket}/" : "${bucket}"
  ]
}

# Terraform move the storage integration to ready to early
# using a sleep function allow us to pass the value out of the module only
# when the resource is ready.

resource "time_sleep" "wait_until_integration_is_ready" {
  depends_on      = [snowflake_storage_integration.storage_integration]
  create_duration = var.seconds_to_wait_before_integration_is_ready
}

resource "snowflake_integration_grant" "storage_integration_grant" {
  integration_name  = snowflake_storage_integration.storage_integration.name
  privilege         = var.privilege
  roles             = var.roles
  with_grant_option = var.with_grant_option
}
