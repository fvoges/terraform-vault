locals {
  root_namespace = var.hcp_vault ? "admin" : "root"
}

terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 2"
    }
  }
}

provider "vault" {
  namespace = local.root_namespace
}
