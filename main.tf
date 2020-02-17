###
# Security center contact
###

resource "azurerm_security_center_contact" "this" {
  count = var.enabled ? 1 : 0

  email               = var.email
  phone               = var.phone
  alert_notifications = var.alert_notifications
  alerts_to_admins    = var.alerts_to_admins
}

###
# Security center subcription pricing
###

resource "azurerm_security_center_subscription_pricing" "this" {
  count = var.enabled && var.subscription_pricing_enabled ? 1 : 0

  tier = var.tier
}

###
# Security center workspace
###

resource "azurerm_security_center_workspace" "this_workspace" {
  count = var.enabled && var.workspace_enabled && var.tier != "Free" ? length(var.scopes) : 0

  scope        = var.tier != "Free" ? element(var.scopes, count.index) : ""
  workspace_id = var.tier != "Free" ? element(var.workspace_ids, count.index) : ""
}
