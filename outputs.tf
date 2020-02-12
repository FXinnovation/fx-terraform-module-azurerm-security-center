###
# security center contact
###

output "security_center_contact_ids" {
  description = "The security center conatct IDs"
  value       = azurerm_security_center_contact.this.*.id
}

###
# security center subscription pricing
###

output "security_center_pricing_ids" {
  description = "The security center subscription pricing IDs "
  value       = azurerm_security_center_subscription_pricing.this.*.id
}

###
# security center workspace
###

output "security_center_workspace_ids" {
  description = "IDs of security center workspaces"
  value       = azurerm_security_center_workspace.this_workspace.*.id
}
