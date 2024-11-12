#virtual machine creation

resource "azurerm_linux_virtual_machine" "vm" {
  name                  = "vm-01"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.niccard.id]
  size                  = "Standard_B1s"

  os_disk {
    name                 = "myOsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"

  }
  computer_name                   = "hostname"
  admin_username                  = "azdevops"
  disable_password_authentication = false
  admin_password                  = "password@123"
}



  