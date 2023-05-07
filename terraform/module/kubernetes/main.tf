module "resource_group" {
  source              = ".././general"
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_kubernetes_cluster" "akc" {
  name                = "akc"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  sku_tier            = var.sku_tier
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.vm_size
    type       = var.node_pool_type
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.akc.id
  vm_size               = var.vm_size
  node_count            = var.node_count
  mode                  = var.node_pool_mode
  os_type               = var.os_type
}
