# step 1- create resource,storage account and conatiner 
#step 2- add backend block in provider.tf with details


resource "azurerm_resource_group" "rgstate" {
  name = "tfstaterg"
  location = "westus"
}

resource "azurerm_storage_account" "sastate" {

name = "tfstatesa8998"
resource_group_name = azurerm_resource_group.rgstate.name
location = azurerm_resource_group.rgstate.location
account_tier              = "Standard" 
account_replication_type  = "GRS"

}
resource "azurerm_storage_container" "tfcontainer" {

  name                  = "tfstatemycont8998"
  storage_account_name  = azurerm_storage_account.sastate.name
  container_access_type = "private"

}