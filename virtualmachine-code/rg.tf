# resource group creation

resource "azurerm_resource_group" "rg" {
  name     = "rg-02"
  location = "Central India"
}