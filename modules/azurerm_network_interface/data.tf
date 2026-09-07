data "azurerm_subnet" "subnets" {
  for_each = var.subnets
  name                 = each.value.subnet_name
  virtual_network_name = each.value.subnet_virtual_network_name
  resource_group_name  = each.value.subnet_resource_group_name
}