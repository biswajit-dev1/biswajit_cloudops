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
subnets={
  subnet1={
  subnet_name                 = "frontend-subnet"
  subnet_resource_group_name  = "rg-wfm"
  subnet_virtual_network_name = "wfm-vnet"
  subnet_address_prefixes     = ["10.1.0.0/24"]
    }
  subnet2={
  subnet_name                 = "backend-subnet"
  subnet_resource_group_name  = "rg-wfm"
  subnet_virtual_network_name = "wfm-vnet"
  subnet_address_prefixes     = ["10.2.0.0/24"]
    }
  subnet3={
  subnet_name                 = "frontend-subnet"
  subnet_resource_group_name  = "rg-wfm"
  subnet_virtual_network_name = "wfm-vnet"
  subnet_address_prefixes     = ["10.3.0.0/24"]
    }
  subnet4={
  subnet_name                 = "AzureBastionSubnet"
  subnet_resource_group_name  = "rg-wfm"
  subnet_virtual_network_name = "wfm-vnet"
  subnet_address_prefixes     = ["10.0.1.0/28"]
    }
}