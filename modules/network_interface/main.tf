resource "azurerm_network_interface" "nic" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.internal_subnet_id
    private_ip_address_allocation = "Dynamic"
  }

  ip_configuration {
    name                          = "external"
    subnet_id                     = var.external_subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip_id
  }
}

output "id" {
  value = azurerm_network_interface.nic.id
}
