# General settings
location = "East US"
resource_group_name = "paloalto-firewall-rg"

# Virtual Network settings
virtual_network_name         = "vnet"
virtual_network_address_space = ["10.0.0.0/16"]

# Subnet settings
internal_subnet_address_prefix = "10.0.1.0/24"
external_subnet_address_prefix = "10.0.2.0/24"

# Public IP settings
public_ip1_name = "pip1"
public_ip2_name = "pip2"

# Network Interface settings
nic1_name = "nic1"
nic2_name = "nic2"

# VM settings
admin_username = "adminuser"
admin_password = "Password123!"
vm1_name = "palo-alto-fw1"
vm2_name = "palo-alto-fw2"

# Load Balancer settings
internal_lb_name = "internal-lb"
external_lb_name = "external-lb"

# VWAN settings
vwan_name       = "vwan"
vhub_address_prefix = "10.0.3.0/24"
