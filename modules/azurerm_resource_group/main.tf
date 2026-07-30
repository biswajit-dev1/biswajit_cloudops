resource "azurerm_resource_group" "biswa_rg" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}