provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "./modules/resource_group"
  name   = var.resource_group_name
  location = var.location
}

module "virtual_network" {
  source              = "./modules/virtual_network"
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "internal_subnet" {
  source              = "./modules/subnet"
  name                = "internal-subnet"
  address_prefix      = var.internal_subnet_address_prefix
  virtual_network_name = module.virtual_network.name
  resource_group_name = module.resource_group.name
}

module "external_subnet" {
  source              = "./modules/subnet"
  name                = "external-subnet"
  address_prefix      = var.external_subnet_address_prefix
  virtual_network_name = module.virtual_network.name
  resource_group_name = module.resource_group.name
}

module "public_ip1" {
  source              = "./modules/public_ip"
  name                = "pip1"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "public_ip2" {
  source              = "./modules/public_ip"
  name                = "pip2"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "nic1" {
  source                  = "./modules/network_interface"
  name                    = "nic1"
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
  internal_subnet_id      = module.internal_subnet.id
  external_subnet_id      = module.external_subnet.id
  public_ip_id            = module.public_ip1.id
}

module "nic2" {
  source                  = "./modules/network_interface"
  name                    = "nic2"
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
  internal_subnet_id      = module.internal_subnet.id
  external_subnet_id      = module.external_subnet.id
  public_ip_id            = module.public_ip2.id
}

module "vm1" {
  source                  = "./modules/virtual_machine"
  name                    = "palo-alto-fw1"
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
  network_interface_id    = module.nic1.id
  admin_username          = var.admin_username
  admin_password          = var.admin_password
}

module "vm2" {
  source                  = "./modules/virtual_machine"
  name                    = "palo-alto-fw2"
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
  network_interface_id    = module.nic2.id
  admin_username          = var.admin_username
  admin_password          = var.admin_password
}

module "standard_lb" {
  source                  = "./modules/standard_load_balancer"
  name                    = "internal-lb"
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
  internal_subnet_id      = module.internal_subnet.id
}

module "gateway_lb" {
  source                  = "./modules/gateway_load_balancer"
  name                    = "external-lb"
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
  public_ip_id            = module.public_ip1.id
}

module "vwan" {
  source                  = "./modules/vwan"
  name                    = "vwan"
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
}
