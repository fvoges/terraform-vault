<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 2.21.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_oidc_auth"></a> [oidc\_auth](#module\_oidc\_auth) | ../../modules/terraform-vault-auth-oidc | n/a |
| <a name="module_vault_admins_external_group"></a> [vault\_admins\_external\_group](#module\_vault\_admins\_external\_group) | ../../modules/terraform-vault-auth-oidc-group | n/a |
| <a name="module_vault_admins_internal_group"></a> [vault\_admins\_internal\_group](#module\_vault\_admins\_internal\_group) | ../../modules/terraform-vault-internal-group | n/a |

## Resources

| Name | Type |
|------|------|
| [vault_audit.file](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/audit) | resource |
| [vault_audit.syslog](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/audit) | resource |
| [vault_policy_document.vault_admin](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admins_external_group_metadata"></a> [admins\_external\_group\_metadata](#input\_admins\_external\_group\_metadata) | n/a | `any` | n/a | yes |
| <a name="input_admins_external_group_name"></a> [admins\_external\_group\_name](#input\_admins\_external\_group\_name) | n/a | `any` | n/a | yes |
| <a name="input_admins_internal_group_metadata"></a> [admins\_internal\_group\_metadata](#input\_admins\_internal\_group\_metadata) | n/a | `any` | n/a | yes |
| <a name="input_admins_internal_group_name"></a> [admins\_internal\_group\_name](#input\_admins\_internal\_group\_name) | n/a | `any` | n/a | yes |
| <a name="input_oidc_client_id"></a> [oidc\_client\_id](#input\_oidc\_client\_id) | n/a | `any` | n/a | yes |
| <a name="input_oidc_client_secret"></a> [oidc\_client\_secret](#input\_oidc\_client\_secret) | n/a | `any` | n/a | yes |
| <a name="input_oidc_description"></a> [oidc\_description](#input\_oidc\_description) | n/a | `any` | n/a | yes |
| <a name="input_oidc_discovery_url"></a> [oidc\_discovery\_url](#input\_oidc\_discovery\_url) | n/a | `any` | n/a | yes |
| <a name="input_oidc_group_alias_name"></a> [oidc\_group\_alias\_name](#input\_oidc\_group\_alias\_name) | n/a | `any` | n/a | yes |
| <a name="input_vault_audit_log_file_path"></a> [vault\_audit\_log\_file\_path](#input\_vault\_audit\_log\_file\_path) | n/a | `any` | n/a | yes |
| <a name="input_vault_hostname"></a> [vault\_hostname](#input\_vault\_hostname) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oidc_accessor"></a> [oidc\_accessor](#output\_oidc\_accessor) | n/a |
<!-- END_TF_DOCS -->