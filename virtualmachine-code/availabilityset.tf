resource "azurerm_availability_set" "central-av-set" {
  name = "Central India-AV-set"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  platform_fault_domain_count = 3
  platform_update_domain_count = 3

  tags= {
    environment = "Production"
  }
}