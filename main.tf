resource "snowflake_storage_integration" "storage_integration" {
  name                 = var.storage_integration_name
  comment              = var.comment
  type                 = var.type

  enabled              = var.enabled

  storage_provider     = var.storage_provider
  storage_aws_role_arn = var.storage_aws_role_arn
  storage_allowed_locations = [
    for bucket in var.storage_allowed_locations :
    "s3://${bucket}/"
  ]
}

// Terraform move the storage integration to ready to early
// using a sleep function allow us to pass the value out of the module only
// when the resource is ready.
resource "time_sleep" "wait_until_integration_is_ready" {
  depends_on      = [snowflake_storage_integration.storage_integration]
  create_duration = var.seconds_to_wait_before_integration_is_ready
}

resource "snowflake_integration_grant" "storage_integration_grant" {
  integration_name = snowflake_storage_integration.storage_integration.name
  privilege = var.privilege
  roles     = var.roles
  with_grant_option = false
}
