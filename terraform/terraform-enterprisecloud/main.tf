resource "azurerm_resource_group" "rgfortfcloud" {
  name = var.resource_group_name
  location = var.location
}
 resource "azurerm_storage_account" "safortfcloud" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rgfortfcloud.name
  location                 = var.location
  account_tier             = var.access_tier
  account_replication_type = "GRS"
}