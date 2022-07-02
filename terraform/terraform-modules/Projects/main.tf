module "mystoragacc-module" {
  source = "../Modules "
  rgname = "rg-for-nsg" 
  storage_account_name = var.sa_name
}

# explicit value provided in the module block overrides the value in the template 
#if variables are used in the referenced module


resource "azurerm_network_security_group" "nsg" {
  name                = "demo_nsg"
  location            = var.location
  resource_group_name = module.mystoragacc-module.rg_name
}
  