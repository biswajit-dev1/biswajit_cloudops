data "azurerm_subnet" "wfm-subnets" {
  for_each = var.subnets
  name                 = each.value.subnet_name
  virtual_network_name = each.value.subnet_virtual_network_name
  resource_group_name  = each.value.subnet_resource_group_name
}
data "azurerm_public_ip" "wfm_pips" {
  for_each = var.pip
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}
