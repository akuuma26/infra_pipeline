module "resource_group" {
  source = "../../modules/resource_group"
  rg     = var.rg
}

module "azure_vnet" {
  depends_on = [module.resource_group]
  source     = "../../modules/Virtual_network"
  vnet       = var.vnet
}

