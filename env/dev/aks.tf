# Azure Kubernetes Cluster Module
module "azurerm_kubernetes_cluster" {
  source              = "../../modules/azurerm_kubernetes_cluster"
  cluster_name        = "myAKSCluster"
  kubernetes_version  = "1.29.4"
  system_node_count   = 3
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location            = module.azurerm_resource_group.resource_group_location
  network_plugin      = "azure"
  node_resource_group = "finastra_node_rg01"
  docker_bridge_cidr  = var.docker_bridge_cidr
  service_cidr        = var.service_cidr
  dns_service_ip      = var.dns_service_ip
  depends_on = [
    module.azurerm_resource_group,
    module.virtual_network,
    module.azurerm_subnet,
    module.public_ip_address,
    module.network_interface_card
  ]
}