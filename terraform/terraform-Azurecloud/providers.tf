terraform {
    required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      
    }
  }

backend "azurerm" {
        resource_group_name  = "tfstaterg"
        storage_account_name = "tfstatesa8998"
        container_name       = "tfstatemycont8998"
        key                  = "terraform.state"
    }
}
provider "azurerm" {
  features {}
}