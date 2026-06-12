/*resource "azurerm_subnet" "bastion_subnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.AVday2_RG2.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/27"]
}

resource "azurerm_public_ip" "bastion_public_ip" {
  name                = "bastionpublicip"
  location            = azurerm_resource_group.AVday2_RG2.location
  resource_group_name = azurerm_resource_group.AVday2_RG2.name
  allocation_method   = "Static"
  sku                 = "Standard"
}
resource "azurerm_bastion_host" "bastion_host" {
  name                = "AVday4-bastion"
  location            = azurerm_resource_group.AVday2_RG2.location
  resource_group_name = azurerm_resource_group.AVday2_RG2.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion_subnet.id
    public_ip_address_id = azurerm_public_ip.bastion_public_ip.id
  }
}*/