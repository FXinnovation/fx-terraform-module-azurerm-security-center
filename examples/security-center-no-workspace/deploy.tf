resource "random_string" "this" {
  length  = 4
  upper   = false
  special = false
}

module "resource_group_demo" {
  source = "git::https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/terraform-module-azurerm-resource-group.git?ref=0.2.0"
  name     = "tftest${random_string.this.result}"
  location  = "francecentral"
}

module "security_center_no_workspace" {
  source   = "../.."

  email = "test123@example.com"
  phone  = "+1-214-267-0000"
  tier     = "standard"
}
