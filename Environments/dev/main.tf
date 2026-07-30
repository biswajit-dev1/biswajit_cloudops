module "rgs" { // module name "rgs" is not the key used within the map
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs //key "rgs" must be same as in child module
}
module "vnets" {
  depends_on = [module.rgs]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnets //key "vnets" must be same as in child module
}
module "subnets" {
  depends_on = [module.vnets,module.rgs]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets //key "subnets" must be same as in child module
}
module "pip" {
  depends_on = [module.rgs]
  source     = "../../modules/azurerm_public_ip"
  pips       = var.pips //key "pips" must be same as in child module

}
module "virtual_machine" {
  depends_on = [ module.rgs,module.pip,module.subnets ]
  source = "../../modules/azurerm_virtual_machine"
  vms    = var.vms
  nics   = var.nics
  nic_public_ip_name = var.nic_public_ip_name
}