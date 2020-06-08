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

  // Required provider secrets
  //cloudflare_zone_id = null
  //discord_webhook_secret = null
  //tfc_vcs_oauth_token = null

  // General service settings
  service_name = "template-bootstrap"
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

  // Required provider secrets
  //cloudflare_zone_id = null
  //discord_webhook_secret = null
  //tfc_vcs_oauth_token = null

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
