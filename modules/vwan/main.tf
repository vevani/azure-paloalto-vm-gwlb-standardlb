resource "azurerm_virtual_wan" "vwan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_hub" "vhub" {
  name                = "vhub"
  location            = var.location
  resource_group_name = var.resource_group_name
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  address_prefix      = var.address_prefix
}

resource "azurerm_virtual_hub_security_partner_provider" "security_provider" {
  name                      = "securityprovider"
  resource_group_name       = var.resource_group_name
  virtual_hub_id            = azurerm_virtual_hub.vhub.id
  security_provider_name    = "PaloAltoNetworksCloudngfw"
  provider_hub_name         = azurerm_virtual_hub.vhub.name
}

output "vwan_id" {
  value = azurerm_virtual_wan.vwan.id
}

output "vhub_id" {
  value = azurerm_virtual_hub.vhub.id
}
