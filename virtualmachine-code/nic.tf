# network interface card creation


resource "azurerm_network_interface" "niccard" {
  name                = "nic-1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "ipconfig-1"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.publicip.id
  }

}

resource "azurerm_network_interface_security_group_association" "NIC" {
  network_interface_id      = azurerm_network_interface.niccard.id
  network_security_group_id = azurerm_network_security_group.nsg.id

}

