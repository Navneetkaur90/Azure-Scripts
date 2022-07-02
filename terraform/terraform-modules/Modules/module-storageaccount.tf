# code to create a storage account in virtual machine 

resource "azurerm_resource_group" "rgforsa" {
    name = var.rgname
    location = var.location

}

resource "azurerm_storage_account" "saformodule" {
    name  = var.storage_account_name
    location = var.location
    resource_group_name = azurerm_resource_group.rgforsa.name
    account_tier             = "Standard"
    account_replication_type = "GRS"
    
}
