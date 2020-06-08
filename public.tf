// terraform-projektdragon-bootstrap
// Serves as the template for future uses of the bootstrap template.
// All assignable variables will be set to null, and reflect a practical
// example of on how to configure what is found in the repositories README.md

module "flocksock" {
  source  = "app.terraform.io/ProjektDragon/bootstrap/projektdragon"
  version = "0.0.3"

  // Enable providers
  cloudflare_enabled = true
  discord_enabled = true
  github_enabled = true

  // General service settings
  service_name = "flocksock"
  service_description = "Twitch chat interacts with OBS websocks"
  service_url = "http://flocksock.projektdragon.dev"

  // Cloudflare DNS settings
  cloudflare_domain_name = "projecktdragon.dev"
  cloudflare_record_type = "CNAME"
  cloudflare_record_name = "flocksock"
  cloudflare_record_value = "projectdragon.stream"

  // GitHub settings
  github_gitignore_template = "Go"
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
  tfc_working_directory = ""
}
