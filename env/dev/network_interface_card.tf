# Azure NIC Module
module "network_interface_card" {
  source                        = "../../modules/network_interface_card"
  resource_group_name           = module.azurerm_resource_group.resource_group_name
  network_interface_name        = "myNIC"
  location                      = module.azurerm_resource_group.resource_group_location
  ip_configuration_name         = "myNICConfiguration"
  subnet_id                     = var.subnet_id
  private_ip_address_allocation = "Dynamic"
}