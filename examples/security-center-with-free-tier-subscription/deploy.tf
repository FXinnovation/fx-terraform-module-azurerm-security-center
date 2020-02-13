module "example" {
  source = "../.."

  email                        = "test123@example.com"
  phone                        = "+1-214-267-0000"
  subscription_pricing_enabled = true
  tier                         = "Free"
}
