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

variable "public_ip_id" {
  description = "The ID of the public IP address."
  type        = string
}
