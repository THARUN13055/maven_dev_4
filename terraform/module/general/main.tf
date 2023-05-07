resource "azurerm_resource_group" "az_rs_gp" {
  name     = var.resource_group_name
  location = var.location
}