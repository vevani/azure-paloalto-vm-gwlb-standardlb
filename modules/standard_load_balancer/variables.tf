variable "name" {
  description = "The name of the Load Balancer."
  type        = string
}

variable "location" {
  description = "The location of the Load Balancer."
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name for the Load Balancer."
  type        = string
}

variable "internal_subnet_id" {
  description = "The ID of the internal subnet."
  type        = string
}
