# azure-paloalto-vm-gwlb-standardlb
Terraform plan for deploying two standalone Palo Alto firewalls in an active/active configuration with an Azure Load Balancer for internal traffic and Azure Gateway Load Balancer for internet access in an Azure VWAN hub.
# Project Structure
```
terraform/
  ├── main.tf
  ├── variables.tf
  ├── outputs.tf
  ├── modules/
  │   ├── resource_group/
  │   │   ├── main.tf
  │   │   ├── variables.tf
  │   │   └── outputs.tf
  │   ├── virtual_network/
  │   │   ├── main.tf
  │   │   ├── variables.tf
  │   │   └── outputs.tf
  │   ├── subnet/
  │   │   ├── main.tf
  │   │   ├── variables.tf
  │   │   └── outputs.tf
  │   ├── public_ip/
  │   │   ├── main.tf
  │   │   ├── variables.tf
  │   │   └── outputs.tf
  │   ├── network_interface/
  │   │   ├── main.tf
  │   │   ├── variables.tf
  │   │   └── outputs.tf
  │   ├── virtual_machine/
  │   │   ├── main.tf
  │   │   ├── variables.tf
  │   │   └── outputs.tf
  │   ├── standard_load_balancer/
  │   │   ├── main.tf
  │   │   ├── variables.tf
  │   │   └── outputs.tf
  │   ├── gateway_load_balancer/
  │   │   ├── main.tf
  │   │   ├── variables.tf
  │   │   └── outputs.tf
  │   └── vwan/
  │       ├── main.tf
  │       ├── variables.tf
  │       └── outputs.tf
  ├── provider.tf
  └── terraform.tfvars
```
