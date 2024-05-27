# Azure Subnet Module
module "azurerm_subnet" {
  source               = "../../modules/azurerm_subnet"
  resource_group_name  = module.azurerm_resource_group.resource_group_name
  virtual_network_name = "myVNet"
  subnet_name          = "mySubnet"
  address_prefixes     = ["10.0.1.0/24"]
}