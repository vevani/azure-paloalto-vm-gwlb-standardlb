resource "azurerm_lb" "external_lb" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "external-frontend"
    public_ip_address_id = var.public_ip_id
  }
}

output "ip_address" {
  value = azurerm_lb.external_lb.frontend_ip_configuration[0].public_ip_address
}
