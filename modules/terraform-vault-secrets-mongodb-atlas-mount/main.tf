resource "vault_mount" "mongodb" {
  path = var.mount_path
  type = "database"
}

resource "vault_database_secret_backend_connection" "mongodb" {
  backend       = var.mount_path
  name          = var.mount_name
  allowed_roles = [var.role_name]

  mongodbatlas {
    public_key  = var.public_key
    private_key = var.private_key
    project_id  = var.project_id
  }
}

