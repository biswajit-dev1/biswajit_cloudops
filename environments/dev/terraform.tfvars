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
subnets = {
  subnet1 = {
    subnet_name                 = "frontend-subnet"
    subnet_resource_group_name  = "rg-wfm"
    subnet_virtual_network_name = "wfm-vnet"
    subnet_address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name                 = "backend-subnet"
    subnet_resource_group_name  = "rg-wfm"
    subnet_virtual_network_name = "wfm-vnet"
    subnet_address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    subnet_name                 = "database-subnet"
    subnet_resource_group_name  = "rg-wfm"
    subnet_virtual_network_name = "wfm-vnet"
    subnet_address_prefixes     = ["10.0.3.0/24"]
  }
  subnet4 = {
    subnet_name                 = "AzureBastionSubnet"
    subnet_resource_group_name  = "rg-wfm"
    subnet_virtual_network_name = "wfm-vnet"
    subnet_address_prefixes     = ["10.0.4.0/28"]
  }
}
rgs = {
  rg1 = {
    name     = "rg-wfm"
    location = "centralindia"
  }
}
vnets = {
  vnet1 = {
    name                = "wfm-vnet"
    location            = "centralindia"
    resource_group_name = "rg-wfm"
    address_space       = ["10.0.0.0/16"]
  }
}
pip={
  pip1={
  name                = "wfm_pip"
  location            = "central india"
  resource_group_name = "rg-wfm"
  allocation_method   = "Static"
  sku                 = "Standard"
}
}
  bastion={
  bastion1={
  name                = "wfm-bastion"
  location            = "central india"
  resource_group_name = "rg-wfm"
  ipconfig_name       = "bastion-configuration"
  subnet_key="subnet4"
   pip_key="pip1"
  }
  }
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