###
# Security center contact
###

output "security_center_contact_id" {
  description = "The Security center conatct ID"
  value       = azurerm_security_center_contact.this.*.id
}

###
# Security center subscription pricing
###

output "security_center_pricing_id" {
  description = "The Security center subscription pricing ID "
  value       = azurerm_security_center_subscription_pricing.this.*.id
}

###
# Security center workspace
###

output "security_center_workspace_ids" {
  description = "IDs of Security center workspaces"
  value       = azurerm_security_center_workspace.this_workspace.*.id
}
