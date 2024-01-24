provider "onepassword" {
  account = var.onepassword_account
}

variable "onepassword_account" {
  type = string
}

variable "onepassword_vault_id" {
  type = string
}
