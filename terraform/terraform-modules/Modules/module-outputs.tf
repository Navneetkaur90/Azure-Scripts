output "sa_name" {
  value = azurerm_storage_account.saformodule.name
}

output "rg_name" {
  value = azurerm_resource_group.rgforsa.name
}