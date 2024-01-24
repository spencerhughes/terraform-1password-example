resource "onepassword_item" "example_service_account" {
  vault = var.onepassword_vault_id
  title = "Example Terraform-Managed Service Account"
  category = "password"
  username = "exampleuser"
  password_recipe {
    digits = true
    letters = true
    symbols = true
    length = 40
  }
}
