vms={
  nic1={
  name                = "frontendvm"
  resource_group_name = "rg-wfm"
  location            = "centralindia"
  size                = "Standard_DC1ds_v3"
  admin_username      = "adminuser"
  admin_password="Password@123"
  disable_password_authentication=false
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
  },
  nic2={
  name                = "backendvm"
  resource_group_name = "rg-wfm"
  location            = "centralindia"
  size                = "Standard_DC1ds_v3"
  admin_username      = "adminuser"
  admin_password="Password@123"
  disable_password_authentication=false
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
  }
  nic3={
  name                = "databasevm"
  resource_group_name = "rg-wfm"
  location            = "centralindia"
  size                = "Standard_DC1ds_v3"
  admin_username      = "adminuser"
  admin_password="Password@123"
  disable_password_authentication=false
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}
}
nic={
  nic1={
  nic_name            = "frontend-nic"
  location            = "central india"
  resource_group_name = "rg-wfm"

    ipconfig_name                 = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_key="subnet1"
  }
  nic2={
  nic_name            = "backend_vm-nic"
  location            = "central india"
  resource_group_name = "rg-wfm"

    ipconfig_name                 = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_key="subnet2"
  }
  nic3={
  nic_name            = "database_vm-nic"
  location            = "central india"
  resource_group_name = "rg-wfm"

    ipconfig_name                 = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_key="subnet3"
  }
 
    }