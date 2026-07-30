resource "azurerm_network_interface" "bis_nics" {
  for_each = var.nics
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.nic_resource_group_name

  ip_configuration {
    name                          = each.value.nic_ip_config_name
    subnet_id                     = data.azurerm_subnet.subnets[each.key].id
    public_ip_address_id = data.azurerm_public_ip.pips[each.key].id
    private_ip_address_allocation = each.value.nic_private_ip_address_allocation
  }
}

resource "azurerm_linux_virtual_machine" "vms" {
  depends_on = [ azurerm_network_interface.bis_nics ]
  for_each = var.vms
  name                = each.value.vm_name
  resource_group_name = each.value.vm_resource_group_name
  location            = each.value.vm_location
  size                = each.value.vm_size
  admin_username      = each.value.vm_admin_username
  admin_password=each.value.vm_admin_password
  disable_password_authentication=each.value.vm_disable_password_authentication
  network_interface_ids = [
    azurerm_network_interface.bis_nics[each.key].id,
  ]

  os_disk {
    caching              = each.value.vm_caching
    storage_account_type = each.value.vm_storage_account_type
  }

  source_image_reference {
    publisher = each.value.vm_publisher
    offer     = each.value.vm_offer
    sku       = each.value.vm_sku
    version   = each.value.vm_version
  }
}