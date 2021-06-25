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
| [vault_namespace.top](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/namespace) | resource |
| [vault_policy.vault_admins](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy_document.vault_admin](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admins_external_group_metadata"></a> [admins\_external\_group\_metadata](#input\_admins\_external\_group\_metadata) | Metadata to be added to the group group (key => value pairs). | `map(any)` | `{}` | no |
| <a name="input_admins_external_group_name"></a> [admins\_external\_group\_name](#input\_admins\_external\_group\_name) | External group name. It's not required that it matches, but you want it match the group name from the external directory. | `string` | n/a | yes |
| <a name="input_admins_internal_group_metadata"></a> [admins\_internal\_group\_metadata](#input\_admins\_internal\_group\_metadata) | Metadata to be added to the internal group (key => value pairs). | `map(any)` | `{}` | no |
| <a name="input_admins_internal_group_name"></a> [admins\_internal\_group\_name](#input\_admins\_internal\_group\_name) | Internal group name. | `string` | n/a | yes |
| <a name="input_oidc_client_id"></a> [oidc\_client\_id](#input\_oidc\_client\_id) | OIDC client ID from provided by your OIDC admins. | `string` | n/a | yes |
| <a name="input_oidc_client_secret"></a> [oidc\_client\_secret](#input\_oidc\_client\_secret) | OIDC client secret used to authenticate to your OIDC servers. Provided by your OIDC admins. | `string` | n/a | yes |
| <a name="input_oidc_description"></a> [oidc\_description](#input\_oidc\_description) | Name for this OIDC auth backed configuration | `string` | `"OIDC Auth Backend"` | no |
| <a name="input_oidc_discovery_url"></a> [oidc\_discovery\_url](#input\_oidc\_discovery\_url) | This is the OIDC  discovery URL provided by your OIDC admins. | `string` | n/a | yes |
| <a name="input_oidc_group_alias_name"></a> [oidc\_group\_alias\_name](#input\_oidc\_group\_alias\_name) | OIDC group ID of the external group matching the group claims returned by the OIDC server after login. This is what links the external group to the OIDC group. | `string` | n/a | yes |
| <a name="input_top_namespace"></a> [top\_namespace](#input\_top\_namespace) | name of the top-level namespace. All your child namespaced should be created under this one. | `string` | n/a | yes |
| <a name="input_vault_audit_log_file_path"></a> [vault\_audit\_log\_file\_path](#input\_vault\_audit\_log\_file\_path) | Vault audit log file location. The directory must exist and the Vault daemon user must have write permissions to it. | `string` | `"var/log/vault/audit.log"` | no |
| <a name="input_vault_hostname"></a> [vault\_hostname](#input\_vault\_hostname) | DNS hostname for your Vault cluster. Used for the OIDC callback configuration. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oidc_accessor"></a> [oidc\_accessor](#output\_oidc\_accessor) | OIDC Auth backend mount accessor. |
