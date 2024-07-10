variable "name" {
  description = "The name of the virtual WAN."
  type        = string
}

variable "location" {
  description = "The location of the virtual WAN."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "address_prefix" {
  description = "The address prefix for the virtual hub."
  type        = string
}
