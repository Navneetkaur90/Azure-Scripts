resource  "azurerm_resource_group" "rgfortf" {
 name = "tfresourcegroup"
 location = "westus"
 
}

resource "azurerm_storage_account" "acfortf" {
name = "tfstorageaccount90"
resource_group_name = azurerm_resource_group.rgfortf.name
location = azurerm_resource_group.rgfortf.location
account_tier              = "Standard" 
account_replication_type  = "GRS"


  
}

