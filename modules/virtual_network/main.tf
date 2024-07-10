resource "azurerm_virtual_network" "vnet" {
  name                = var.name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

output "name" {
  value = azurerm_virtual_network.vnet.name
}

output "id" {
  value = azurerm_virtual_network.vnet.id
}
