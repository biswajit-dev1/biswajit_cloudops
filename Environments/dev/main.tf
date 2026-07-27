
module "resource_groups" {
  source ="../../modules/azurerm_resource_group"
  resource_groups=var.biswa-rg
}
module "subnets" {
  depends_on = [ module.virtual_networks ]
  source = "../../modules/azurerm_subnet"
  subnets=var.subnets
}

module "virtual_networks" {
  depends_on = [ module.resource_groups ]
  source = "../../modules/azurerm_virtual_network"
  vnets=var.vnets
}