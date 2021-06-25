locals {
  namespace_name = "${var.env}-${var.app}"
}

provider "vault" {
  namespace = var.namespace_path
  alias     = "parent"
}

resource "vault_namespace" "default" {
  provider = vault.parent
  path     = local.namespace_name
}

provider "vault" {
  namespace = "${var.namespace_path}/${local.namespace_name}"
  alias     = "child_namespace"
}

module "mongodb_external_group" {
  source = "../../modules/terraform-vault-auth-oidc-group"

  oidc_auth_mount_accessor = var.oidc_auth_mount_accessor
  oidc_group_alias_name    = var.external_group_alias_name
  oidc_group_metadata      = var.external_group_metadata
  oidc_group_name          = var.external_group_name
}

module "mongodb_mount" {
  source = "../../modules/terraform-vault-secrets-mongodb-atlas-mount"

  providers = {
    vault = vault.child_namespace
  }

  private_key = var.mongodb_private_key
  project_id  = var.mongodb_project_id
  public_key  = var.mongodb_public_key
  role_name   = var.env

  depends_on = [vault_namespace.default]
}

module "mongodb_role" {
  source = "../../modules/terraform-vault-secrets-mongodb-atlas-role"

  providers = {
    vault = vault.child_namespace
  }

  creation_statement = var.mongodb_role_creation_statement
  role_name          = var.env

  depends_on = [vault_namespace.default, module.mongodb_mount]
}

module "mongodb_internal_group" {
  source = "../../modules/terraform-vault-internal-group"

  providers = {
    vault = vault.child_namespace
  }

  group_name       = var.internal_group_name
  group_metadata   = var.internal_group_metadata
  member_group_ids = [module.mongodb_external_group.external_group.id]
  vault_policies   = [module.mongodb_role.policy.name]

  depends_on = [vault_namespace.default, module.mongodb_mount]
}
