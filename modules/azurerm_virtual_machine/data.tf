data "azurerm_subnet" "subnets" {
  for_each = var.nics
  name                 = each.value.nic_subnet_name
  virtual_network_name = each.value.nic_vnet_name
  resource_group_name  = each.value.nic_resource_group_name
}


data "azurerm_public_ip" "pips" {
  for_each = var.nics
  name                = each.value.nic_public_ip_name
  resource_group_name = each.value.nic_resource_group_name
}

