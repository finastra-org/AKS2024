# Azure Public IP Module
module "public_ip_address" {
  source                      = "../../modules/public_ip_address"
  resource_group_name         = module.azurerm_resource_group.resource_group_name
  azurerm_public_ip_name      = "myPublicIP"
  public_ip_allocation_method = "Dynamic"
  location                    = module.azurerm_resource_group.resource_group_location
}