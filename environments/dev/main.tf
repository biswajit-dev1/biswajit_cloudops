module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_networks" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_virtual_networks"
  vnets      = var.vnets
}

module "subnets" {
  depends_on = [module.resource_group, module.virtual_networks]
  source     = "../../modules/azurerm_subnets"
  subnets    = var.subnets
}

module "network_interface" {
  depends_on = [ module.resource_group, module.virtual_networks, module.subnets ]
  source  = "../../modules/azurerm_network_interface"
  nic     = var.nic
  subnets = var.subnets
}

module "public_ip" {
  depends_on = [ module.resource_group ]
  source = "../../modules/azurerm_public_ip"
  pip=var.pip
}

module "bastion" {
  depends_on = [ module.resource_group, module.network_interface, module.subnets, module.public_ip ]
  source = "../../modules/azurerm_bastion"
  bastion=var.bastion
  subnets = var.subnets
  pip=var.pip
}
module "linux_virtual_machines" {
  depends_on = [ module.subnets, module.network_interface, module.public_ip ]
  source = "../../modules/azurerm_Linux_virtual_machine"
  vms=var.vms
  nic=var.nic
}