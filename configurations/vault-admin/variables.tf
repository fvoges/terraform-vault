variable "hcp_vault" {
  type        = bool
  description = "Set to `true` if using HCP Vault."
  default     = false
}
variable "admins_internal_group_metadata" {
  type        = map(any)
  description = "Metadata to be added to the internal group (key => value pairs)."
  default     = {}
}
variable "admins_internal_group_name" {
  type        = string
  description = "Internal group name."
}
variable "admins_external_group_metadata" {
  type        = map(any)
  description = "Metadata to be added to the group group (key => value pairs)."
  default     = {}
}
variable "admins_external_group_name" {
  type        = string
  description = "External group name. It's not required that it matches, but you want it match the group name from the external directory."
}
variable "oidc_client_id" {
  type        = string
  description = "OIDC client ID from provided by your OIDC admins."
}
variable "oidc_client_secret" {
  type        = string
  description = "OIDC client secret used to authenticate to your OIDC servers. Provided by your OIDC admins."
  sensitive   = true
}
variable "oidc_description" {
  type        = string
  description = "Name for this OIDC auth backed configuration"
  default     = "OIDC Auth Backend"
}
variable "oidc_discovery_url" {
  type        = string
  description = "This is the OIDC  discovery URL provided by your OIDC admins."
}
variable "oidc_group_alias_name" {
  type        = string
  description = "OIDC group ID of the external group matching the group claims returned by the OIDC server after login. This is what links the external group to the OIDC group."
}
variable "vault_hostname" {
  type        = string
  description = "DNS hostname for your Vault cluster. Used for the OIDC callback configuration."
}
variable "vault_audit_log_file_path" {
  type        = string
  description = "Vault audit log file location. The directory must exist and the Vault daemon user must have write permissions to it."
  default     = "var/log/vault/audit.log"
}
variable "top_namespace" {
  type        = string
  description = "name of the top-level namespace. All your child namespace should be created under this one."
}
