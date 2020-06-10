// Common variables associated with the bootstrap template
locals {
  organization = "ProjektDragon" // Terraform Cloud + GitHub Organization name
  service_url = "http://projektdragon.com"
  approved_users         = ["mpmsimo"]
  terraform_version      = "0.12.24"

}

// Inherit secrets from Terraform Cloud
variable "discord_webhook_secret" {}
variable "tfc_vcs_oauth_token" {}
variable "cloudflare_zone_id" {}
