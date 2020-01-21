###
# security center contact
###

resource "azurerm_security_center_contact" "this" {
  count = var.enabled ? 1 : 0
  email = var.email
  phone = var.phone

  alert_notifications = var.alert_notifications
  alerts_to_admins    = var.alerts_to_admins
}

resource "azurerm_security_center_subscription_pricing" "this" {
  tier = var.tier
}

###
# security center workspace
###

resource "azurerm_security_center_workspace" "this_workspace" {
  count        = var.workspace_enabled ? length(var.security_center_workspace) : 0
  scope        = element(keys(var.security_center_workspace), count.index)
  workspace_id = element(values(var.security_center_workspace), count.index)
  depends_on   = [azurerm_security_center_subscription_pricing.this]
}
