/*# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0" #in production always give the version number
    }
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.

  features {}
}*/
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
     # version = "=4.1.0" #in production always give the version number
    }
  }
  backend "azurerm" {
    resource_group_name   = "AVterraform_Day4" #replace the same with your storage account rg
    storage_account_name  = "avterraformday4" #replace the same with your own storage account
    container_name        = "avtfcontainerday4" #name of the container
    key                   = "avstorageday4.tfstate" #state file will be stored with this name
  }
}

/*# Configure the Microsoft Azure Provider
provider "azurerm" {
  # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.

  features {}
}*/
provider "azurerm" {
  # resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}

variable "client_id" {
  type = string
}
 
variable "client_secret" {
  type = string
}
 
variable "subscription_id" {
  type = string
}
 
variable "tenant_id" {
  type = string
}