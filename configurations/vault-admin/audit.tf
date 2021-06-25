resource "vault_audit" "file" {
  type = "file"

  options = {
    file_path = var.vault_audit_log_file_path
  }
}

resource "vault_audit" "syslog" {
  type    = "syslog"
  options = {}
}

