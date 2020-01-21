output "security_center_contact_id" {
  description = "The security center conatct ID"
  value       = azurerm_security_center_contact.this.*.id
}

output "security_center_pricing_id" {
  description = "The security center subscription pricing ID "
  value       = azurerm_security_center_subscription_pricing.this.id
}

output "security_center_workspace_id" {
  description = "IDs of security center workspaces"
  value       = azurerm_security_center_workspace.this_workspace.*.id
}
