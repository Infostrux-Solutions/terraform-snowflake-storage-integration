
terraform {
  required_version = ">= 0.13.1"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">=0.40.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.8.0"
    }
  }
}

provider "snowflake" {
  role = "SYSADMIN"
}

################################################################################
# Storage Integration Module
################################################################################

module "storage_integration" {
  source                    = "../../"
  storage_integration_name  = "STORAGE_INTEGRATION_EXAMPLE"
  storage_aws_role_arn      = "arn:aws:iam::531175092231:role/test-snowflake-storage-integration-role"
  storage_allowed_locations = ["test-snowflake-storage-integration"]
  roles                     = ["SYSADMIN", "ACCOUNTADMIN"]
}
