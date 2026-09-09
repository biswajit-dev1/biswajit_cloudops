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
  subnets = {
  subnet1 = {
    subnet_name                 = "frontend-subnet"
    subnet_resource_group_name  = "rg-wfm"
    subnet_virtual_network_name = "wfm-vnet"
    subnet_address_prefixes     = ["10.0.0.0/24"]
  }
  subnet2 = {
    subnet_name                 = "backend-subnet"
    subnet_resource_group_name  = "rg-wfm"
    subnet_virtual_network_name = "wfm-vnet"
    subnet_address_prefixes     = ["10.0.1.0/24"]
  }
  subnet3 = {
    subnet_name                 = "database-subnet"
    subnet_resource_group_name  = "rg-wfm"
    subnet_virtual_network_name = "wfm-vnet"
    subnet_address_prefixes     = ["10.0.2.0/24"]
  }
  subnet4 = {
    subnet_name                 = "AzureBastionSubnet"
    subnet_resource_group_name  = "rg-wfm"
    subnet_virtual_network_name = "wfm-vnet"
    subnet_address_prefixes     = ["10.0.3.0/28"]
  }
}
pip={
    pip1={
  name                = "wfm-pip"
  resource_group_name = "rg-wfm"
    }
}