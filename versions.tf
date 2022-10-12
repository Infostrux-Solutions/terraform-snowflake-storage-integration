terraform {
  required_version = ">= 0.13.1"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 0.40.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.0"
    }
  }
}
