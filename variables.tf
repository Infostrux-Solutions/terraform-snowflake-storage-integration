variable "storage_integration_name" {
  type        = string
  description = "Name for the storage integration. Integration name must be upper cases and unique for the account."
}


variable "comment" {
  type        = string
  description = "Specifies a comment for the storage integration."
  default     = "Created by Terraform."
}

variable "enabled" {
  type        = bool
  description = "Enable by default."
  default     = true
}

variable "type" {
  type        = string
  description = "Type of the storage integration."
  default     = "EXTERNAL_STAGE"
}

variable "azure_tentant_id" {
  type        = string
  description = "Azure tentant IDs"
  default     = null
}

variable "storage_provider" {
  type           = string
  description    = "The provider for the storage integration."
  default        = "S3"
  validation {
    condition = contains(["S3", "AZURE"], var.storage_provider)
    error_message = "Invalid storage_provider, possible values are : S3, AZURE"
  } 
}

variable "storage_aws_role_arn" {
  type        = string
  description = "The AWS storage integration role."
  default     = null
}

variable "storage_allowed_locations" {
  type        = set(string)
  description = "Storage integration allowed buckets (bucket names)."
  default     = []
}

variable "seconds_to_wait_before_integration_is_ready" {
  type        = string
  description = "Time to wait before integration is ready"
  default     = "10s"
}

variable "privilege" {
  type        = string
  description = "The privilege to grant on the integration."
  default     = "USAGE"
}

variable "roles" {
  type        = set(string)
  description = "Grants privilege to these roles."
  default     = []
}

variable "with_grant_option" {
  type        = bool
  description = "When this is set to true, allows the recipient role to grant the privileges to other roles."
  default     = false
}
