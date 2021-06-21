data "terraform_remote_state" "vault_admin" {
  backend = "local"

  config = {
    path = "../vault-admin/terraform.tfstate"
  }
}

