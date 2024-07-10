variable "location" {
  description = "The Azure location where all resources will be created."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "virtual_network_address_space" {
  description = "The address space of the virtual network."
  type        = list(string)
}

variable "internal_subnet_address_prefix" {
  description = "The address prefix for the internal subnet."
  type        = string
}

variable "external_subnet_address_prefix" {
  description = "The address prefix for the external subnet."
  type        = string
}

variable "admin_username" {
  description = "The admin username for the VMs."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the VMs."
  type        = string
}
