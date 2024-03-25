#Virtual network
#Description: This will allow us to reference the main EAI resource group
#========================================================================
data "azurerm_virtual_network" "ais_virtual_network" {
  name     = var.main_virtual_network
  resource_group_name = var.main_resource_group
}

data "azurerm_subnet" "private_endpoints" {
  name                 = var.main_pe_subnet
  virtual_network_name = data.azurerm_virtual_network.ais_virtual_network.name
  resource_group_name  = var.main_resource_group
}
