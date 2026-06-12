/* resource "azurerm_windows_virtual_machine" "avwin_vm1" {
  name                = "avwin-machine"
  resource_group_name = azurerm_resource_group.AVday2_RG2.name
  location            = azurerm_resource_group.AVday2_RG2.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.avwindows_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  custom_data = filebase64("${path.module}/app/app.ps1") #it will read the content of the file and convert it to base64 encoded string and pass it to the custom data
 }
 */