module "resource_group" {
  source              = "./module/general"
  resource_group_name = local.resource_group_name
  location            = local.location
}

module "cluster" {
  source              = "./module/kubernetes"
  name                = "Kubernetes-cluster01"
  location            = local.location
  resource_group_name = local.resource_group_name
  dns_prefix          = "kubernets-network1"
  node_pool_name      = "default"
  node_count          = "1"
  vm_size             = "Standard_DS2_v2"
  sku_tier            = "Free"
  kubernetes_version  = "1.25.6"
  node_pool_type      = "VirtualMachineScaleSets"
  node_pool_mode      = "System"
  os_type             = "Linux"
}