module "mongodb_external_group" {
  source = "../../modules/terraform-vault-auth-oidc-group"

  oidc_auth_backend_accessor = data.terraform_remote_state.vault_admin.outputs.oidc_accessor
  // oidc_auth_backend_accessor = var.oidc_auth_mount_accessor
  oidc_group_alias_name      = var.oidc_group_alias_name
  oidc_group_metadata        = var.mongodb_external_group_metadata
  oidc_group_name            = var.mongodb_external_group_name
}

module "vault_admins_internal_group" {
  source = "../../modules/terraform-vault-internal-group"

  group_name            = var.mongodb_internal_group_name
  group_metadata        = var.mongodb_internal_group_metadata
  vault_policy_document = module.mongodb_role.policy_document.hcl
  member_group_ids      = [module.mongodb_external_group.external_group.id]
}

module "mongodb_secrets_mount" {
  source = "../../modules/terraform-vault-secrets-mongodb-atlas-mount"

  mount_name  = var.mongodb_secrets_mount_name
  mount_path  = var.mongodb_secrets_mount_path
  private_key = var.mongodb_private_key
  project_id  = var.mongodb_project_id
  public_key  = var.mongodb_public_key
  role_name   = var.mongodb_role_name
}

module "mongodb_role" {
  source = "../../modules/terraform-vault-secrets-mongodb-atlas-role"

  creation_statement = var.mongodb_role_creation_statement
  mount_name         = var.mongodb_secrets_mount_name
  mount_path         = var.mongodb_secrets_mount_path
  role_name          = var.mongodb_role_name
}
