variable "oidc_client_id" {
  type        = string
  description = "OIDC client ID"
}
variable "oidc_client_secret" {
  type        = string
  description = "OIDC Client secret."
  sensitive   = true
}
variable "oidc_description" {
  type        = string
  description = "Description for the OIDC Auth backend."
  default     = "OIDC external directory"
}
variable "oidc_discovery_url" {
  type        = string
  description = "Discovery URL for the OIDC Auth backend (see Vault's documentation)."
}
variable "vault_hostname" {
  type        = string
  description = "DNS name of the Vault cluster."
}
variable "oidc_verbose_log" {
  type        = bool
  description = "Turn `verbose_oidc_logging` on for the OIDC role. WARNING: this requires debug logging turned on on the Vault cluster to show the JWT token returned by the OIDC provider. This info shows up in the application log (i.e., syslog), not audit log."
  default     = false
}
