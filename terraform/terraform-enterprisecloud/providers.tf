


terraform {
   cloud {
    organization = "devops-code-nk"
    workspaces {
      name = "remotestatestorage"
    }
  }
}

provider "azurerm" {
  features {}
}