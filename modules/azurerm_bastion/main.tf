resource "azurerm_bastion_host" "wfm_bastion" {
  for_each = var.bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = each.value.ipconfig_name
    subnet_id            = data.azurerm_subnet.wfm-subnets[each.value.subnet_key].id
    public_ip_address_id = data.azurerm_public_ip.wfm_pips[each.value.pip_key].id
  }
}