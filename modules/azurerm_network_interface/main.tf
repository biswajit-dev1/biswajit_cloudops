resource "azurerm_network_interface" "wfm-nics" {
  for_each = var.nic
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ipconfig_name
    subnet_id                     = data.azurerm_subnet.subnets[each.value.subnet_key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
}