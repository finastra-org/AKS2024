variable "rgname" {
  type        = string
  description = "used for naming resource group"
}

variable "location" {
  type        = string
  description = "used for selecting location"
  default     = "eastus"
}

variable "prefix" {
  type        = string
  description = "The prefix used for all resources in this example"
}

variable "vnet_cidr_prefix" {
  type        = string
  description = "This variable defines address space for vnet"
}

variable "subnet1_cidr_prefix" {
  type        = string
  description = "This variable defines address space for subnetnet"
}

variable "subnet" {
  type        = string
  description = "This variable defines subnet name"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}


variable "virtual_network_name" {
  description = "The name of the virtual network"
}

variable "virtual_network_address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet"
}

variable "subnet_address_prefixes" {
  description = "The address prefixes of the subnet"
  type        = list(string)
}

variable "public_ip_name" {
  description = "The name of the public IP address"
}

variable "azurerm_public_ip_name" {
  description = "The name of the public IP address"
}

variable "public_ip_allocation_method" {
  description = "The allocation method of the public IP address"
}

variable "network_interface_name" {
  description = "The name of the network interface"
}

variable "ip_configuration_name" {
  description = "The name of the IP configuration"
}

variable "private_ip_address_allocation" {
  description = "The allocation method for the private IP address"
}

variable "virtual_machine_name" {
  description = "The name of the virtual machine"
}

variable "vm_size" {
  description = "The size of the virtual machine"
}

variable "windows_image_sku" {
  description = "The SKU of the Windows image"
}

variable "computer_name" {
  description = "The computer name of the virtual machine"
}

variable "admin_username" {
  description = "The admin username of the virtual machine"
}

variable "admin_password" {
  description = "The admin password of the virtual machine"
}

variable "provision_vm_agent" {
  description = "Whether to provision the VM agent"
  type        = bool
}
variable "os_disk_name" {
  description = "The name of the OS disk"
}

variable "os_disk_caching" {
  description = "The caching type for the OS disk"
}

variable "os_disk_managed_disk_type" {
  description = "The managed disk type for the OS disk"
}

variable "azure_container_registry" {
  description = "The managed disk type for the OS disk"
}

variable "azurerm_network_interface" {
  description = "This is azurerm_network_interface"
}

variable "subnet_id" {
  description = "ID of the subnet to which the network interface should be attached."
  type        = string
}








#AKS

variable "cluster_name" {
  type        = string
  description = "AKS cluster name"
}

variable "kubernetes_version" {
  type        = string
  description = "AKS version, always check for versions available"
}


variable "node_resource_group" {
  type        = string
  description = "AKS node pool resource group, this is different from cluster rg"
}

variable "system_node_count" {
  type        = string
  description = "Total number of nodes in AKS node pool"
}

variable "network_plugin" {
  type        = string
  description = "Choose between kubenet and azure cni. Kubenet is default, AzureCNI is preffered."
}

variable "docker_bridge_cidr" {
  type        = string
  description = "Internal docker bridge network CIDR"
}

variable "service_cidr" {
  type        = string
  description = "Internal kubernetes services CIDR"
}

variable "dns_service_ip" {
  type        = string
  description = "AKS DNS IP for name resolutions"
}


variable "azurerm_virtual_network" {
  type        = string
  description = "Azure network group"
}

variable "azurerm_subnet" {
  type        = string
  description = "name of subnet"
}

##########




variable "vnet_name" {
  type        = string
  description = "name of subnet"
}

variable "postgresql_server_name" {
  description = "The name of the PostgreSQL Flexible Server"
  type        = string
}

variable "administrator_login" {
  description = "The administrator login for the PostgreSQL Flexible Server"
  type        = string
}

variable "administrator_password" {
  description = "The administrator login password for the PostgreSQL Flexible Server"
  type        = string
}
##

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "account_tier" {
  description = "The storage tier for the Azure Storage Account."
  type        = string
}

variable "account_replication_type" {
  description = "The replication type for the Azure Storage Account."
  type        = string
}
##

variable "eventhub_namespace_name" {
  description = "The name of the Azure Event Hub Namespace."
  type        = string
}

variable "eventhub_name" {
  description = "The name of the Azure Event Hub."
  type        = string
}

variable "eventhub_namespace_sku" {
  description = "The SKU of the Azure Event Hub Namespace."
  type        = string
}

variable "partition_count" {
  description = "The number of partitions for the Azure Event Hub."
  type        = number
}

variable "message_retention" {
  description = "The number of days to retain events in the event hub."
  type        = number
}
##
variable "namespace_name" {
  description = "The name of the Azure Service Bus namespace."
  type        = string
}

variable "sku" {
  description = "The SKU (pricing tier) of the Azure Service Bus namespace."
  type        = string
}

variable "topic_name" {
  description = "The name of the Azure Service Bus topic."
  type        = string
}

variable "subscription_name" {
  description = "The name of the Azure Service Bus subscription."
  type        = string
}

variable "dead_lettering_on_move" {
  description = "Whether dead-lettered messages should be moved to the dead-letter queue."
  type        = bool
}

variable "namespace_id" {
  description = "The ID of the Azure Service Bus namespace."
  type        = string
}

variable "topic_id" {
  description = "The ID of the Azure Service Bus topic."
  type        = string
}

variable "max_delivery_count" {
  description = "The maximum number of delivery attempts before a message is dead-lettered."
  type        = number
}

variable "sku_name" {
  description = "The sku name where resources will be deployed"
  type        = string
}

variable "storage_mb" {
  description = "The storage in mb"
  type        = string
}

/*variable "postgres_version" {
  description = "The version"
  type        = string
}*/