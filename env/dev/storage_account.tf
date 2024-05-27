module "storage_account" {
  source                   = "../../modules/azurerm_storage_account"
  storage_account_name     = var.storage_account_name
  resource_group_name      = module.azurerm_resource_group.resource_group_name
  location                 = module.azurerm_resource_group.resource_group_location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  depends_on = [
    module.azurerm_resource_group,
  ]
}