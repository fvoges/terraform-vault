output "oidc_accessor" {
  value       = module.oidc_auth.oidc_auth_mount_accessor
  description = "OIDC Auth backend mount accessor."
}
