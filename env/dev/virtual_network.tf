# Azure VNet Module # 
module "virtual_network" {
  source                        = "../../modules/azurerm_virtual_network"
  resource_group_name           = module.azurerm_resource_group.resource_group_name
  virtual_network_name          = "myVNet"
  virtual_network_address_space = ["10.0.0.0/16"]
  location                      = module.azurerm_resource_group.resource_group_location
}