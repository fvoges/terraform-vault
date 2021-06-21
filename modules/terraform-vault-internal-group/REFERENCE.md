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
| [vault_identity_group.internal](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_group) | resource |
| [vault_policy.internal_group](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_metadata"></a> [group\_metadata](#input\_group\_metadata) | n/a | `any` | n/a | yes |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | n/a | `any` | n/a | yes |
| <a name="input_member_group_ids"></a> [member\_group\_ids](#input\_member\_group\_ids) | n/a | `any` | n/a | yes |
| <a name="input_vault_policy_document"></a> [vault\_policy\_document](#input\_vault\_policy\_document) | n/a | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internal_group"></a> [internal\_group](#output\_internal\_group) | n/a |
<!-- END_TF_DOCS -->