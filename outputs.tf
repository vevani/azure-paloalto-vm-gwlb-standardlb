output "resource_group_name" {
  value = module.resource_group.name
}

output "virtual_network_name" {
  value = module.virtual_network.name
}

output "internal_subnet_id" {
  value = module.internal_subnet.id
}

output "external_subnet_id" {
  value = module.external_subnet.id
}

output "public_ip1" {
  value = module.public_ip1.ip_address
}

output "public_ip2" {
  value = module.public_ip2.ip_address
}

output "vm1_public_ip" {
  value = module.vm1.public_ip
}

output "vm2_public_ip" {
  value = module.vm2.public_ip
}

output "internal_lb_ip" {
  value = module.standard_lb.ip_address
}

output "external_lb_ip" {
  value = module.gateway_lb.ip_address
}
