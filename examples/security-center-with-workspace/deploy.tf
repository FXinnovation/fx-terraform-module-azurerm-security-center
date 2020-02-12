resource "random_string" "this" {
  length  = 4
  upper   = false
  special = false
}

resource "azurerm_resource_group" "example" {
  name     = "tftest${random_string.this.result}"
  location = "francecentral"
}

module "workspace_test" {
  source = "git::https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/terraform-module-azurerm-log-analytics-workspace.git?ref=0.2.0"

  name                = "test${random_string.this.result}"
  location            = "francecentral"
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018"
}

module "example" {
  source = "../.."

  email                        = "test123@example.com"
  phone                        = "+1-214-267-0000"
  subscription_pricing_enabled = true
  tier                         = "Standard"
  workspace_enabled            = true
  scopes                       = ["/subscriptions/${var.subscription_id}"]
  workspace_ids                = ["${module.workspace_test.id}"]
}
