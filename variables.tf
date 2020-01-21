variable "enabled" {
  description = "Enable or disable module"
  default     = true
}

variable "email" {
  description   = "the email of the security center contact."
  type          = string
}

variable "phone" {
  description       = "the phone number  of the security center contact. Example: `1-xxx-xxx-xxxx`"
  type              = string
}

variable "alert_notifications" {
  description       = "Boolean flag which describes whether to send security alerts notifications to the security contact. "
  default           = true
}

variable "alerts_to_admins" {
  description   = "Boolean flag which describes  whether to send security alerts notifications to subscription admins. "
  default       = true
}

variable "tier" {
  description   = "Manages the pricing tier for Azure security center in the current subscription. Possible values are `Free` and `Standard`. NOTE: Changing the pricing tier to Standard affects all resources in the subscription and could be quite costly. Deletion of this resource does not change or reset the pricing tier to Free. Source: https://www.terraform.io/docs/providers/azurerm/r/security_center_subscription_pricing.html"
  type          = string
}

variable "workspace_enabled" {
  description   = "Boolean flag which describe whether to create the security center workspace or not"
  default       = false
}

variable "security_center_workspace" {
  description       = "Map of the scopes with the associated Log Analytics Workspace. Can only be used on `Standard` tier. Scope can be a Subscription or Resource Group id. Example:   `/subscriptions/00000000-0000-0000-0000-000000000000 = data.azurerm_log_analytics_workspace.this.id` .See https://www.terraform.io/docs/providers/azurerm/r/security_center_workspace.html"
  type              = map
  default           = {}
}
