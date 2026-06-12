/*resource "azurerm_public_ip" "web_vm_publicip" {
  name                = "${local.resource_name_prefix}-web-vm-publicip"
  resource_group_name = azurerm_resource_group.AVday2_RG2.name
  location            = azurerm_resource_group.AVday2_RG2.location
  allocation_method   = "Static"
  sku                 = "Standard" #basic #premium

  tags = local.project_tags
}*/