<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_mongodb_external_group"></a> [mongodb\_external\_group](#module\_mongodb\_external\_group) | ../../modules/terraform-vault-auth-oidc-group | n/a |
| <a name="module_mongodb_role"></a> [mongodb\_role](#module\_mongodb\_role) | ../../modules/terraform-vault-secrets-mongodb-atlas-role | n/a |
| <a name="module_mongodb_secrets_mount"></a> [mongodb\_secrets\_mount](#module\_mongodb\_secrets\_mount) | ../../modules/terraform-vault-secrets-mongodb-atlas-mount | n/a |
| <a name="module_vault_admins_internal_group"></a> [vault\_admins\_internal\_group](#module\_vault\_admins\_internal\_group) | ../../modules/terraform-vault-internal-group | n/a |

## Resources

| Name | Type |
|------|------|
| [terraform_remote_state.vault_admin](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_mongodb_external_group_metadata"></a> [mongodb\_external\_group\_metadata](#input\_mongodb\_external\_group\_metadata) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_external_group_name"></a> [mongodb\_external\_group\_name](#input\_mongodb\_external\_group\_name) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_internal_group_metadata"></a> [mongodb\_internal\_group\_metadata](#input\_mongodb\_internal\_group\_metadata) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_internal_group_name"></a> [mongodb\_internal\_group\_name](#input\_mongodb\_internal\_group\_name) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_private_key"></a> [mongodb\_private\_key](#input\_mongodb\_private\_key) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_project_id"></a> [mongodb\_project\_id](#input\_mongodb\_project\_id) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_public_key"></a> [mongodb\_public\_key](#input\_mongodb\_public\_key) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_role_creation_statement"></a> [mongodb\_role\_creation\_statement](#input\_mongodb\_role\_creation\_statement) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_role_name"></a> [mongodb\_role\_name](#input\_mongodb\_role\_name) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_secrets_mount_name"></a> [mongodb\_secrets\_mount\_name](#input\_mongodb\_secrets\_mount\_name) | n/a | `any` | n/a | yes |
| <a name="input_mongodb_secrets_mount_path"></a> [mongodb\_secrets\_mount\_path](#input\_mongodb\_secrets\_mount\_path) | n/a | `any` | n/a | yes |
| <a name="input_oidc_auth_mount_accessor"></a> [oidc\_auth\_mount\_accessor](#input\_oidc\_auth\_mount\_accessor) | n/a | `any` | n/a | yes |
| <a name="input_oidc_group_alias_name"></a> [oidc\_group\_alias\_name](#input\_oidc\_group\_alias\_name) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->