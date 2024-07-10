resource "azurerm_public_ip" "pip" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
}

output "id" {
  value = azurerm_public_ip.pip.id
}

output "ip_address" {
  value = azurerm_public_ip.pip.ip_address
}
