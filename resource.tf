#create a new file resource.tf
#resource "azurerm_resource_group" "my_rg" {
#  name     = "AVday1-ter-rg1" #change it to your name
#  location = "eastus"
#}
resource "azurerm_resource_group" "AVday2_RG2" {            #refrence block and it should be unique
  name     = "${var.rg_name}-${local.resource_name_prefix}" #sap-dev
  location = var.location
  tags     = local.project_tags
}