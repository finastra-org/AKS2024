module "postgresql_server" {
  source                 = "../../modules/azurerm_postgresql_flexible_server"
  postgresql_server_name = var.postgresql_server_name
  resource_group_name    = module.azurerm_resource_group.resource_group_name
  location               = module.azurerm_resource_group.resource_group_location
  sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  postgres_version       = "12"
  administrator_login    = "adminuser"
  administrator_password = "P@ssw0rd123"
  depends_on = [
    module.azurerm_resource_group,
  ]
}
