output "rg" {
    value = azurerm_resource_group.rg
    description = "Description resource group name"
}

output "resource_group" {
  value = azurerm_resource_group.rg
  description = "Outputed attributes from the resource group creation (id,location,name)"
}

output "vnet_J" {
  value  = azurerm_virtual_network.vnet_j
  description = "Created vnet"
}

output "subnet_j" {
  value = azurerm_subnet.subnet_j
  description = "Created subnets"
}