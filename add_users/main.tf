terraform {
  required_version = ">=0.13"
}

provider "azuread" {
  version = ">=0.11.0"
}

data "azuread_domains" "aad_domains" {
  only_default = false
}

module "aad_user" {
  source      = "./modules/aad_user"
  for_each    = toset(var.userlist)
  username    = each.value
  password    = var.password
  domain_name = data.azuread_domains.aad_domains.domains[0].domain_name
}