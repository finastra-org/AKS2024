module "servicebus" {
  source                 = "../../modules/azure_servicebus"
  namespace_name         = var.namespace_name
  resource_group_name    = module.azurerm_resource_group.resource_group_name
  location               = module.azurerm_resource_group.resource_group_location
  sku                    = var.sku
  topic_name             = var.topic_name
  topic_id               = var.topic_id
  max_delivery_count     = var.max_delivery_count
  namespace_id           = var.namespace_id # Pass the namespace_id variable
  subscription_name      = var.subscription_name
  dead_lettering_on_move = var.dead_lettering_on_move
  depends_on = [
    module.azurerm_resource_group
  ]
}