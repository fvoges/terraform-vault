## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault.parent"></a> [vault.parent](#provider\_vault.parent) | 2.21.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_mongodb_external_group"></a> [mongodb\_external\_group](#module\_mongodb\_external\_group) | ../../modules/terraform-vault-auth-oidc-group | n/a |
| <a name="module_mongodb_internal_group"></a> [mongodb\_internal\_group](#module\_mongodb\_internal\_group) | ../../modules/terraform-vault-internal-group | n/a |
| <a name="module_mongodb_mount"></a> [mongodb\_mount](#module\_mongodb\_mount) | ../../modules/terraform-vault-secrets-mongodb-atlas-mount | n/a |
| <a name="module_mongodb_role"></a> [mongodb\_role](#module\_mongodb\_role) | ../../modules/terraform-vault-secrets-mongodb-atlas-role | n/a |

## Resources

| Name | Type |
|------|------|
| [vault_namespace.default](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | Application stack name. | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment name. | `string` | n/a | yes |
| <a name="input_external_group_alias_name"></a> [external\_group\_alias\_name](#input\_external\_group\_alias\_name) | The identifier of the external OIDC group (normally, the group object ID) | `string` | n/a | yes |
| <a name="input_external_group_metadata"></a> [external\_group\_metadata](#input\_external\_group\_metadata) | Optional map of metadata to assign to the group | `map(any)` | `{}` | no |
| <a name="input_external_group_name"></a> [external\_group\_name](#input\_external\_group\_name) | Name of the external OIDC group (usually, it matches the name used in the external directory) | `string` | n/a | yes |
| <a name="input_internal_group_metadata"></a> [internal\_group\_metadata](#input\_internal\_group\_metadata) | Metadata to be added to the internal group (key => value pairs). | `map(any)` | `{}` | no |
| <a name="input_internal_group_name"></a> [internal\_group\_name](#input\_internal\_group\_name) | Internal group name. | `string` | n/a | yes |
| <a name="input_mongodb_private_key"></a> [mongodb\_private\_key](#input\_mongodb\_private\_key) | Mongodb Atlas API private key. | `string` | n/a | yes |
| <a name="input_mongodb_project_id"></a> [mongodb\_project\_id](#input\_mongodb\_project\_id) | Mongodb Atlas project ID. | `string` | n/a | yes |
| <a name="input_mongodb_public_key"></a> [mongodb\_public\_key](#input\_mongodb\_public\_key) | Mongodb Atlas API public key. | `string` | n/a | yes |
| <a name="input_mongodb_role_creation_statement"></a> [mongodb\_role\_creation\_statement](#input\_mongodb\_role\_creation\_statement) | MongoDB Atlas secrets engine role creation statement. This defines how to create the user and which permissions it has. Provided by your MongoDB admins. | `list(string)` | n/a | yes |
| <a name="input_mongodb_role_name"></a> [mongodb\_role\_name](#input\_mongodb\_role\_name) | Mongodb Atlas role name to create. | `string` | `"mongodb"` | no |
| <a name="input_namespace_path"></a> [namespace\_path](#input\_namespace\_path) | Vault parent namespace path. Must not include namespace name, just the parent path. | `string` | n/a | yes |
| <a name="input_oidc_auth_mount_accessor"></a> [oidc\_auth\_mount\_accessor](#input\_oidc\_auth\_mount\_accessor) | OIDC Auth backend mount accessor to add the role to. | `string` | n/a | yes |
| <a name="input_services"></a> [services](#input\_services) | Application stack name. | `list(string)` | n/a | yes |

## Outputs

No outputs.
