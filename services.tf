// terraform-projektdragon-bootstrap
// Serves as the template for future uses of the bootstrap template.
// All assignable variables will be set to null, and reflect a practical
// example of on how to configure what is found in the repositories README.md

module "bootstrap" {
  source  = "app.terraform.io/ProjektDragon/bootstrap/projektdragon"
  version = "0.0.3"

  // Enable providers
  cloudflare_enabled = false
  discord_enabled = false
  github_enabled = true
  terraform_cloud_enabled = false

  // Required provider secrets
  cloudflare_zone_id = var.cloudflare_zone_id
  discord_webhook_secret = var.discord_webhook_secret
  tfc_vcs_oauth_token = var.tfc_vcs_oauth_token

  // General service settings
  service_name = "terraform-projektdragon-bootstrap"
  service_description = "Bootstrap a GitHub repository and supporting cloud infrastructure."
  service_url = "http://projektdragon.com"

  // Cloudflare DNS settings
  cloudflare_domain_name = null
  cloudflare_record_type = null
  cloudflare_record_name = null
  cloudflare_record_value = null

  // GitHub settings
  github_gitignore_template = "Terraform"
  github_license_template = "mit"
  github_private_repo	= true
  github_has_issues = true
  github_has_projects = false
  github_has_wiki = false
  github_has_downloads = false

  // Terraform Cloud
  tfc_auto_apply = false
  tfc_file_triggers_enabled = true
  tfc_remote_execution = true
  tfc_working_directory = ""
}

module "dragonlabs" {
  source  = "app.terraform.io/ProjektDragon/bootstrap/projektdragon"
  version = "0.0.3"

  // Enable providers
  cloudflare_enabled = false
  discord_enabled = false
  github_enabled = true
  terraform_cloud_enabled = false

  // Required provider secrets
  cloudflare_zone_id = var.cloudflare_zone_id
  discord_webhook_secret = var.discord_webhook_secret
  tfc_vcs_oauth_token = var.tfc_vcs_oauth_token

  // General service settings
  service_name = "dragonlabs"
  service_description = "Adding eggs to the dragon's nest."
  service_url = "http://projektdragon.com"

  // Cloudflare DNS settings
  cloudflare_domain_name = null
  cloudflare_record_type = null
  cloudflare_record_name = null
  cloudflare_record_value = null

  // GitHub settings
  github_gitignore_template = "Terraform"
  github_license_template = "mit"
  github_private_repo	= true
  github_has_issues = true
  github_has_projects = false
  github_has_wiki = true
  github_has_downloads = false

  // Terraform Cloud
  tfc_auto_apply = false
  tfc_file_triggers_enabled = true
  tfc_remote_execution = true
  tfc_working_directory = ""
}

module "docs" {
  source  = "app.terraform.io/ProjektDragon/bootstrap/projektdragon"
  version = "0.0.3"

  // Enable providers
  cloudflare_enabled = false
  discord_enabled = false
  github_enabled = true
  terraform_cloud_enabled = false

  // Required provider secrets
  cloudflare_zone_id = var.cloudflare_zone_id
  discord_webhook_secret = var.discord_webhook_secret
  tfc_vcs_oauth_token = var.tfc_vcs_oauth_token

  // General service settings
  service_name = "docs"
  service_description = "Documentation for applications related to ProjektDragon and notes on how to contribute."
  service_url = "http://projektdragon.com"

  // GitHub settings
  github_gitignore_template = "Terraform"
  github_license_template = "mit"
  github_private_repo	= false
  github_has_issues = false
  github_has_projects = true
  github_has_wiki = true
  github_has_downloads = false
}

module "flocksock" {
  source  = "app.terraform.io/ProjektDragon/bootstrap/projektdragon"
  version = "0.0.3"

  // Enable providers
  cloudflare_enabled = true
  discord_enabled = true
  github_enabled = true
  terraform_cloud_enabled = false

  // Required provider secrets
  cloudflare_zone_id = var.cloudflare_zone_id
  discord_webhook_secret = var.discord_webhook_secret
  tfc_vcs_oauth_token = var.tfc_vcs_oauth_token

  // General service settings
  service_name = "flocksock"
  service_description = "Twitch chat controlling OBS websockets."
  service_url = "http://projektdragon.com"

  // Cloudflare DNS settings
  cloudflare_domain_name = "projektdragon.dev"
  cloudflare_record_type = "CNAME"
  cloudflare_record_name = "flocksock"
  cloudflare_record_value = "projektdragon.dev"

  // GitHub settings
  github_gitignore_template = "Golang"
  github_license_template = "mit"
  github_private_repo	= false
  github_has_issues = true
  github_has_projects = false
  github_has_wiki = false
  github_has_downloads = false

  // Terraform Cloud
  tfc_auto_apply = false
  tfc_file_triggers_enabled = true
  tfc_remote_execution = true
  tfc_working_directory = "terraform"
}
