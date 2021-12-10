
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
variable "mongodb_internal_group_metadata" {
  type        = map(any)
  description = "Metadata to be added to the internal group (key => value pairs)."
  default     = {}
}
variable "mongodb_internal_group_name" {
  type        = string
  description = "Internal group name."
}
variable "mongodb_external_group_metadata" {
  type        = map(any)
  description = "Metadata to be added to the group group (key => value pairs)."
  default     = {}
}
variable "mongodb_external_group_name" {
  type        = string
  description = "External group name. It's not required that it matches, but you want it match the group name from the external directory."
}
variable "oidc_group_alias_name" {
  type        = string
  description = "OIDC group ID of the external group matching the group claims returned by the OIDC server after login. This is what links the external group to the OIDC group."
}
variable "oidc_auth_mount_accessor" {
  type        = string
  description = "OIDC Auth backend mount accessor to add the role to."
}
variable "mongodb_role_name" {
  type        = string
  description = "Mongodb Atlas role name to create."
  default     = "mongodb"
}
variable "mongodb_mount_path" {
  type        = string
  description = "MongoDB Atlas secrets engine mount path."
  default     = "mongodb"
}
variable "mongodb_mount_name" {
  type        = string
  description = "MongoDB Atlas secrets engine mount name."
  default     = "mongodb"
}
variable "mongodb_role_creation_statement" {
  type        = list(string)
  description = "MongoDB Atlas secrets engine role creation statement. This defines how to create the user and which permissions it has. Provided by your MongoDB admins."
}
