<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | ~> 2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_database_secret_backend_connection.mongodb](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/database_secret_backend_connection) | resource |
| [vault_mount.mongodb](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_mount_name"></a> [mount\_name](#input\_mount\_name) | n/a | `any` | n/a | yes |
| <a name="input_mount_path"></a> [mount\_path](#input\_mount\_path) | n/a | `any` | n/a | yes |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | n/a | `any` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `any` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | n/a | `any` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vault_database_secret_backend_connection"></a> [vault\_database\_secret\_backend\_connection](#output\_vault\_database\_secret\_backend\_connection) | n/a |
<!-- END_TF_DOCS -->