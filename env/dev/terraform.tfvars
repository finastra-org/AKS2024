resource_group_name           = "myResourceGroup"
location                      = "East US"
virtual_network_name          = "myVNet"
virtual_network_address_space = ["10.0.0.0/16"]
subnet_name                   = "mySubnet"
subnet_address_prefixes       = ["10.0.1.0/24"]
public_ip_name                = "myPublicIP"
azurerm_public_ip_name        = "myPublicIP"
public_ip_allocation_method   = "Dynamic"
network_interface_name        = "myNIC"
ip_configuration_name         = "myNICConfiguration"
private_ip_address_allocation = "Dynamic"
virtual_machine_name          = "myVM"
vm_size                       = "Standard_DS1_v2"
windows_image_sku             = "2019-Datacenter"
computer_name                 = "myVM"
admin_username                = "adminuser"
admin_password                = "Password123!"
provision_vm_agent            = true
os_disk_name                  = "osDisk1"
os_disk_caching               = "ReadWrite"
os_disk_managed_disk_type     = "Standard_LRS"
azurerm_network_interface     = "networkinterface01"

#aks terraform.tfvars
cluster_name             = "Rajucluster"
kubernetes_version       = "1.29.4"
node_resource_group      = "finastra_node_rg01"
system_node_count        = "2"
network_plugin           = "azure"
docker_bridge_cidr       = "172.17.0.1/16"
service_cidr             = "10.1.0.0/16"
dns_service_ip           = "10.1.0.10"
vnet_name                = "finastra"
azure_container_registry = "acr01"

##
vnet_cidr_prefix        = "10.0.0.0/16"
subnet1_cidr_prefix     = "10.0.1.0/24"
rgname                  = "myResourceGroup"
azurerm_subnet          = "mySubnet"
azurerm_virtual_network = "myVNetdemo"
prefix                  = "devdemo"
subnet                  = "mySubnetdemo"
subnet_id               = "/subscriptions/0593cadc-1eea-4ea7-a6f4-00c4f3f5c502/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVNet/subnets/mySubnet"
##

postgresql_server_name = "my-postgres-server"
#postgresql_administrator_login          = "adminuser"
#postgresql_administrator_password = "P@ssw0rd123"
##

storage_account_name     = "mytfaccount"
account_tier             = "Standard"
account_replication_type = "LRS"

##

eventhub_namespace_name = "terraform-namespace"
eventhub_name           = "example-eventhub"
eventhub_namespace_sku  = "Standard"
partition_count         = 4
message_retention       = 7 # Or whatever value you want

##
namespace_name         = "latest-namespace"
sku                    = "Standard"
topic_name             = "example-topic"
subscription_name      = "example-subscription"
dead_lettering_on_move = true
max_delivery_count     = 10 # Example value, replace with your desired value
topic_id               = "default_topic_id"
namespace_id           = "/subscriptions/0593cadc-1eea-4ea7-a6f4-00c4f3f5c502/resourceGroups/myResourceGroup/providers/Microsoft.ServiceBus/namespaces/latest-namespace"
storage_mb             = 32768
sku_name               = "GP_Standard_D4s_v3"
#postgres_version      = "12"