data "azurerm_network_interface" "wfm-nics" {
  for_each = var.nic
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}
