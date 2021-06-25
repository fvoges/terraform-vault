module "oidc_auth" {
  source = "../../modules/terraform-vault-auth-oidc"

  oidc_client_id     = var.oidc_client_id
  oidc_client_secret = var.oidc_client_secret
  oidc_description   = var.oidc_description
  oidc_discovery_url = var.oidc_discovery_url
  vault_hostname     = var.vault_hostname
}

module "vault_admins_external_group" {
  source = "../../modules/terraform-vault-auth-oidc-group"

  oidc_group_metadata      = var.admins_external_group_metadata
  oidc_group_name          = var.admins_external_group_name
  oidc_group_alias_name    = var.oidc_group_alias_name
  oidc_auth_mount_accessor = module.oidc_auth.oidc_auth_mount_accessor
}

module "vault_admins_internal_group" {
  source = "../../modules/terraform-vault-internal-group"

  group_name       = var.admins_internal_group_name
  group_metadata   = var.admins_internal_group_metadata
  vault_policies   = [vault_policy.vault_admins.name]
  member_group_ids = [module.vault_admins_external_group.external_group.id]
}

