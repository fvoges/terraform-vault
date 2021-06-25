variable "env" {
  type        = string
  description = "Environment name."
}
variable "app" {
  type        = string
  description = "Application stack name."
}
variable "services" {
  type        = list(string)
  description = "Application stack name."
}
variable "internal_group_metadata" {
  type        = map(any)
  description = "Metadata to be added to the internal group (key => value pairs)."
  default     = {}
}
variable "internal_group_name" {
  type        = string
  description = "Internal group name."
}
// variable "namespace_name" {
//   type        = string
//   description = "Vault namespace to use."
// }
variable "namespace_path" {
  type        = string
  description = "Vault parent namespace path. Must not include namespace name, just the parent path."
}
variable "mongodb_public_key" {
  type        = string
  description = "Mongodb Atlas API public key."
}
variable "mongodb_private_key" {
  type        = string
  description = "Mongodb Atlas API private key."
  sensitive   = true
}
variable "mongodb_project_id" {
  type        = string
  description = "Mongodb Atlas project ID."
}
variable "oidc_auth_mount_accessor" {
  type        = string
  description = "OIDC Auth backend mount accessor to add the role to."
}
variable "external_group_metadata" {
  type        = map(any)
  description = "Optional map of metadata to assign to the group"
  default     = {}
}
variable "external_group_name" {
  type        = string
  description = "Name of the external OIDC group (usually, it matches the name used in the external directory)"
}
variable "external_group_alias_name" {
  type        = string
  description = "The identifier of the external OIDC group (normally, the group object ID)"
}
variable "mongodb_role_creation_statement" {
  type        = list(string)
  description = "MongoDB Atlas secrets engine role creation statement. This defines how to create the user and which permissions it has. Provided by your MongoDB admins."
}
variable "mongodb_role_name" {
  type        = string
  description = "Mongodb Atlas role name to create."
  default     = "mongodb"
}
