# network security group creation
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "test-123"
    priority                   = "1000"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  #   security_rule {
  #     name                       = "web"
  #     priority                   = 1001
  #     direction                  = "Inbound"
  #     access                     = "Allow"
  #     protocol                   = "Tcp"
  #     source_port_range          = "*"
  #     destination_port_range     = "80"
  #     source_address_prefix      = "*"
  #     destination_address_prefix = "*"
  #   }
}