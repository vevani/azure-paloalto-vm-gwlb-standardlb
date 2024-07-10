variable "name" {
  description = "The name of the network interface."
  type        = string
}

variable "location" {
  description = "The location of the network interface."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "internal_subnet_id" {
  description = "The ID of the internal subnet."
  type        = string
}

variable "external_subnet_id" {
  description = "The ID of the external subnet."
  type        = string
}

variable "public_ip_id" {
  description = "The ID of the public IP address."
  type        = string
}
