module "event_hub" {
  source                  = "../../modules/azurerm_eventhub"
  eventhub_namespace_name = var.eventhub_namespace_name
  resource_group_name     = module.azurerm_resource_group.resource_group_name
  location                = module.azurerm_resource_group.resource_group_location
  eventhub_namespace_sku  = var.eventhub_namespace_sku
  eventhub_name           = var.eventhub_name
  partition_count         = var.partition_count
  message_retention       = var.message_retention
  depends_on = [
    module.azurerm_resource_group
  ]
}