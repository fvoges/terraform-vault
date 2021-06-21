data "vault_policy_document" "vault_admin" {
  rule {
    description  = "Read system health check"
    path         = "sys/health"
    capabilities = ["read", "sudo"]
  }

  rule {
    description  = "Create and manage namespaces"
    path         = "sys/namespaces/*"
    capabilities = ["create", "read", "update", "delete", "list"]
  }

  rule {
    description  = "Create and manage identities"
    path         = "identity/*"
    capabilities = ["create", "read", "update", "delete", "list"]
  }

  # Create and manage ACL policies broadly across Vault
  rule {
    description  = "List existing policies"
    path         = "sys/policies/acl"
    capabilities = ["list"]
  }

  rule {
    description  = "Create and manage ACL policies"
    path         = "sys/policies/acl/*"
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
  }

  # Enable and manage authentication methods broadly across Vault
  rule {
    description  = "Manage auth methods broadly across Vault"
    path         = "auth/*"
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
  }

  rule {
    description  = "Create, update, and delete auth methods"
    path         = "sys/auth/*"
    capabilities = ["create", "update", "delete", "sudo"]
  }

  rule {
    description  = "List auth methods"
    path         = "sys/auth"
    capabilities = ["read"]
  }

  rule {
    description  = "Manage secrets engines"
    path         = "sys/mounts/*"
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
  }

  rule {
    description  = "List existing secrets engines."
    path         = "sys/mounts"
    capabilities = ["read"]
  }
}
