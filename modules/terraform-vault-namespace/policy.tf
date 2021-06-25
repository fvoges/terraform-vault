
// resource "vault_policy" "kv_secrets_read" {
//   provider = vault.child_namespace
//   name   = "kv-secrets-read-policy"
//   policy = data.vault_policy_document.kv_secrets_read.hcl
// }

// data "vault_policy_document" "kv_secrets_read" {
//   rule {
//     description  = "Read KV secrets"
//     path         = "secrets/*"
//     capabilities = ["read"]
//   }
// }

// resource "vault_policy" "kv_secrets_manage" {
//   provider = vault.child_namespace
//   name   = "kv-secrets-manage-policy"
//   policy = data.vault_policy_document.kv_secrets_manage.hcl
// }

// data "vault_policy_document" "kv_secrets_manage" {
//   rule {
//     description  = "Manage KV secrets"
//     path         = "secrets/+/*"
//     capabilities = ["read","create", "update", "list", "delete"]
//   }
//   rule {
//     description  = "Manage KV secrets"
//     path         = "secrets/+"
//     capabilities = ["read", "create", "update", "list", "delete"]
//   }
// }
