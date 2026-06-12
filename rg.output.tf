/*output "nsg_name" {
  value = azurerm_network_security_group.example.name
}

output "nic_name" {
  value = azurerm_network_interface.web_nic.name
}

output "rg_name" {
  value = azurerm_resource_group.AVday2_RG2.name
}

output "private_ip" {
  value = azurerm_network_interface.web_nic.private_ip_address
}

output "public_ip" {
  value = azurerm_public_ip.web_vm_publicip.ip_address
}*/

output "vm_private_ips" {
  description = "Private IP addresses of all Linux VMs"

  value = {
    for vm_name, nic in azurerm_network_interface.web_nic :
    vm_name => nic.private_ip_address
  }
}