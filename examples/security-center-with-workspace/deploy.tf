resource "random_string" "this" {
  length  = 4
  upper   = false
  special = false
}

module "resource_group_demo" {
  source = "git::https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/terraform-module-azurerm-resource-group.git?ref=0.2.0"
  name     = "tftest${random_string.this.result}"
  location  = "canadacentral"
}

module "workspace_test" {
  source = "git::https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/terraform-module-azurerm-log-analytics-workspace.git?ref=0.2.0"

  name                = "terraform-test-workspace-default"
  location            = "canadacentral"
  resource_group_name = module.resource_group_demo.name
  sku
}

module "security_center_with_workspace" {
  source = "../.."

  email = "test123@example.com"
  phone  = "+1-214-267-0000"
  tier     = "standard"
  workspace_enabled = true

  security_center_workspace = {
    "/subscriptions/${var.subscription_id}"   = module.workspace_test.id
  }  
}
