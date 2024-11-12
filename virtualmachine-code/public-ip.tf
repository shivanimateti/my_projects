# public  ip creation

resource "azurerm_public_ip" "publicip" {
  name                = "pip-01"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
}