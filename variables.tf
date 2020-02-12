###
# General
###
variable "enabled" {
  description = "Enable or disable module"
  default     = true
}

###
# security center contact
###

variable "email" {
  description = "the email of the security center contact."
  type        = string
  default     = ""
}

variable "phone" {
  description = "the phone number  of the security center contact. Example: `1-xxx-xxx-xxxx`"
  type        = string
  default     = ""
}

variable "alert_notifications" {
  description = "Boolean flag which describes whether to send security alerts notifications to the security contact. "
  default     = true
}

variable "alerts_to_admins" {
  description = "Boolean flag which describes  whether to send security alerts notifications to subscription admins. "
  default     = true
}

###
# security center subscription pricing
###

variable "subscription_pricing_enabled" {
  description = "Boolean flag which describes whether or not enable the security center subsciption pricing."
  default     = false
}

variable "tier" {
  description = "Manages the pricing tier for Azure security center in the current subscription. Possible values are `Free` and `Standard`. NOTE: Changing the pricing tier to Standard affects all resources in the subscription and could be quite costly. Deletion of this resource does not change or reset the pricing tier to Free. Source: https://www.terraform.io/docs/providers/azurerm/r/security_center_subscription_pricing.html"
  type        = string
  default     = ""
}

###
# security center workspace
###

variable "workspace_enabled" {
  description = "Boolean flag which describe whether to create the security center workspace or not"
  default     = false
}

variable "workspace_ids" {
  description = "List of IDs of the log analytics workspace to save the data in."
  type        = list(string)
  default     = [""]
}

variable "scopes" {
  description = "List of scopes of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope. Example: `/subscriptions/00000000-0000-0000-0000-000000000000`."
  type        = list(string)
  default     = [""]
}
