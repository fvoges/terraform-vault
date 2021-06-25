# terraform-vault-namespace

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
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
| <a name="module_namespace"></a> [namespace](#module\_namespace) | ../../modules/terraform-vault-namespace | n/a |

## Resources

| Name | Type |
|------|------|
| [terraform_remote_state.vault_admin](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_mongodb_external_group_metadata"></a> [mongodb\_external\_group\_metadata](#input\_mongodb\_external\_group\_metadata) | Metadata to be added to the group group (key => value pairs). | `map(any)` | `{}` | no |
| <a name="input_mongodb_external_group_name"></a> [mongodb\_external\_group\_name](#input\_mongodb\_external\_group\_name) | External group name. It's not required that it matches, but you want it match the group name from the external directory. | `string` | n/a | yes |
| <a name="input_mongodb_internal_group_metadata"></a> [mongodb\_internal\_group\_metadata](#input\_mongodb\_internal\_group\_metadata) | Metadata to be added to the internal group (key => value pairs). | `map(any)` | `{}` | no |
| <a name="input_mongodb_internal_group_name"></a> [mongodb\_internal\_group\_name](#input\_mongodb\_internal\_group\_name) | Internal group name. | `string` | n/a | yes |
| <a name="input_mongodb_mount_name"></a> [mongodb\_mount\_name](#input\_mongodb\_mount\_name) | MongoDB Atlas secrets engine mount name. | `string` | `"mongodb"` | no |
| <a name="input_mongodb_mount_path"></a> [mongodb\_mount\_path](#input\_mongodb\_mount\_path) | MongoDB Atlas secrets engine mount path. | `string` | `"mongodb"` | no |
| <a name="input_mongodb_private_key"></a> [mongodb\_private\_key](#input\_mongodb\_private\_key) | Mongodb Atlas API private key. | `string` | n/a | yes |
| <a name="input_mongodb_project_id"></a> [mongodb\_project\_id](#input\_mongodb\_project\_id) | Mongodb Atlas project ID. | `string` | n/a | yes |
| <a name="input_mongodb_public_key"></a> [mongodb\_public\_key](#input\_mongodb\_public\_key) | Mongodb Atlas API public key. | `string` | n/a | yes |
| <a name="input_mongodb_role_creation_statement"></a> [mongodb\_role\_creation\_statement](#input\_mongodb\_role\_creation\_statement) | MongoDB Atlas secrets engine role creation statement. This defines how to create the user and which permissions it has. Provided by your MongoDB admins. | `list(string)` | n/a | yes |
| <a name="input_mongodb_role_name"></a> [mongodb\_role\_name](#input\_mongodb\_role\_name) | Mongodb Atlas role name to create. | `string` | `"mongodb"` | no |
| <a name="input_oidc_auth_mount_accessor"></a> [oidc\_auth\_mount\_accessor](#input\_oidc\_auth\_mount\_accessor) | OIDC Auth backend mount accessor to add the role to. | `string` | n/a | yes |
| <a name="input_oidc_group_alias_name"></a> [oidc\_group\_alias\_name](#input\_oidc\_group\_alias\_name) | OIDC group ID of the external group matching the group claims returned by the OIDC server after login. This is what links the external group to the OIDC group. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->