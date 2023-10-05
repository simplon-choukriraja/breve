module "breve" {
    source = "./breve"
    
    location = var.location

    resource_group_name = var.resource_group_name

    vnet_j = var.vnet_j

    subnet_j= var.subnet_j
    }


# Crée le cluster AKS

resource "azurerm_kubernetes_cluster" "aks" {
  name  = "myakscluster"
  location = module.breve.resource_group.location
  resource_group_name = module.breve.resource_group.name
  dns_prefix = "myaksdns"

  default_node_pool {
    name = "default"
    node_count = 1
    vm_size = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}