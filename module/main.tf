# creation resouece group

data "azurerm_subscription" "current" {
  
}

resource "azurerm_resource_group" "rg" {
  name = "rg-breve"
  location = var.location
}

# creation vnet

resource "azurerm_virtual_network" "vnet_j" {
  name = "vnet-breve"
  location = var.location 
  resource_group_name = azurerm_resource_group.rg.name 
  address_space = ["10.2.0.0/16"]
  
} 

# creation subnet 

resource "azurerm_subnet" "subnet_j"   { 
  name = "subnet-breve"
  resource_group_name = azurerm_resource_group.rg.name 
  virtual_network_name = azurerm_virtual_network.vnet_j.name 
  address_prefixes = ["10.2.1.0/24"]
 
 }