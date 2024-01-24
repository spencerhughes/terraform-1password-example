# 1Password Terraform Provider Example

This is a working demonstration of the 1Password Terraform provider.

## Setup

- Run `terraform init` to install the necessary plugins
- Ensure you have the 1Password CLI installed
    - `brew install --cask 1password-cli`
- Ensure you have the 1Password CLI integration enabled
    - Open 1Password
    - Open _Settings_
    - Navigate to the _Developer_ settings
    - Enable _Integrate with 1Password CLI_
- Get your account ID and vault ID
    - Run `op account ls` and copy the _User ID_ value for the desired account
    - Run `export TF_VAR_onepassword_account=**copied value**`
    - Run `op vault ls` and authorize the request, then copy the target _Vault ID_
    - Run `export TF_VAR_onepassword_vault_id=**copied value**`

## Usage

When you run `terraform apply`, Terraform will create a password in the vault you selected called _Example Terraform-Managed Service Account_ with a randomly-generated password, then print the username and password as an output (obviously this is insecure for production use, but serves as a proof-of-concept).
