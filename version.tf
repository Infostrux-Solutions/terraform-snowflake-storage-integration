terraform {
  required_version = ">= 0.13.1"
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = ">=0.31.0"
    }
  }
}
