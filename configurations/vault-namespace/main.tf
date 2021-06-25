
module "namespace" {
  source = "../../modules/terraform-vault-namespace"

  namespace_path = "nedbank"

  env      = "prod"
  app      = "app_a"
  services = ["svc_1", "svc_2"]

  oidc_auth_mount_accessor        = data.terraform_remote_state.vault_admin.outputs.oidc_accessor
  external_group_alias_name       = var.oidc_group_alias_name
  external_group_metadata         = var.mongodb_external_group_metadata
  external_group_name             = var.mongodb_external_group_name
  internal_group_name             = var.mongodb_internal_group_name
  mongodb_private_key             = var.mongodb_private_key
  mongodb_project_id              = var.mongodb_project_id
  mongodb_public_key              = var.mongodb_public_key
  mongodb_role_creation_statement = var.mongodb_role_creation_statement
}
