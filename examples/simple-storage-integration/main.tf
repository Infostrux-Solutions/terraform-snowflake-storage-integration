
terraform {
  required_version = ">= 0.13.1"
}

################################################################################
# Storage Integration Module
################################################################################

module "storage_integration" {
  source           = "../../"
  storage_integration_name = "STORAGE_INTEGRATION_EXAMPLE"
  storage_aws_role_arn = "arn:aws:iam::531175092231:role/test-snowflake-storage-integration-role"
  storage_allowed_locations = ["test-snowflake-storage-integration"]
  roles = ["SYSADMIN","ACCOUNTADMIN"]
}
