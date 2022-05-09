# Snowflake Storage Integration Terraform Module

Terraform module which creates storage integration resources on Snowflake.

## Examples
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | >=0.31.0 |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_integration_grant.storage_integration_grant](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/integration_grant) | resource |
| [snowflake_storage_integration.storage_integration](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/storage_integration) | resource |
| [time_sleep.wait_until_integration_is_ready](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | Specifies a comment for the storage integration. | `string` | `"Created by Terraform."` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Enable by default. | `bool` | `true` | no |
| <a name="input_privilege"></a> [privilege](#input\_privilege) | The privilege to grant on the integration. | `string` | `"USAGE"` | no |
| <a name="input_roles"></a> [roles](#input\_roles) | Grants privilege to these roles. | `set(string)` | `[]` | no |
| <a name="input_seconds_to_wait_before_integration_is_ready"></a> [seconds\_to\_wait\_before\_integration\_is\_ready](#input\_seconds\_to\_wait\_before\_integration\_is\_ready) | n/a | `string` | `"10s"` | no |
| <a name="input_storage_allowed_locations"></a> [storage\_allowed\_locations](#input\_storage\_allowed\_locations) | Storage integration allowed buckets. | `set(string)` | `[]` | no |
| <a name="input_storage_aws_role_arn"></a> [storage\_aws\_role\_arn](#input\_storage\_aws\_role\_arn) | The AWS storage integration role. | `string` | `null` | no |
| <a name="input_storage_integration_name"></a> [storage\_integration\_name](#input\_storage\_integration\_name) | Name for the storage integration. Integration name must be unique for the account. | `string` | n/a | yes |
| <a name="input_storage_provider"></a> [storage\_provider](#input\_storage\_provider) | The provider for the storage integration. | `string` | `"S3"` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of the storage integration. | `string` | `"EXTERNAL_STAGE"` | no |
| <a name="input_with_grant_option"></a> [with\_grant\_option](#input\_with\_grant\_option) | When this is set to true, allows the recipient role to grant the privileges to other roles. | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

## License

Apache 2 Licensed. See [LICENSE](https://github.com/terraform-aws-modules/terraform-aws-vpc/tree/master/LICENSE) for full details.
