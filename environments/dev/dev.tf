module "resourceGroup" {
  source = "../../modules/resource_group/"
  rg     = var.rg
}

module "virtual_network" {
  depends_on = [module.resourceGroup]
  source     = "../../modules/Virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../modules/subnet"
  subnet     = var.subnet
}

module "public_ip" {
  depends_on = [module.resourceGroup]
  source     = "../../modules/azure_pip"
  pip        = var.pip
}

module "network_interface" {
  depends_on = [module.public_ip]
  source     = "../../modules/azure_nic"
  nic        = var.nic
}

module "linux_vm" {
  depends_on = [module.network_interface]
  source     = "../../modules/azure_virtual_machine"
  linuxVm    = var.linuxVm
}