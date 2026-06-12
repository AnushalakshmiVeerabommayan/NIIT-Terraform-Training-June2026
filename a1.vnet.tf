resource "azurerm_virtual_network" "vnet" {
  name                = "AVday2-network2"
  location            = azurerm_resource_group.AVday2_RG2.location
  resource_group_name = azurerm_resource_group.AVday2_RG2.name
  address_space       = ["10.0.0.0/16"]
  tags                = local.project_tags
}