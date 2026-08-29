module "resourceGroup" {
  source = "../childModule/resourceGroup/"
  rg     = var.rg
}

module "virtual_network" {
  depends_on = [module.resourceGroup]
  source     = "../childModule/virtualnetwork"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../childModule/subnet"
  subnet     = var.subnet
}

module "public_ip" {
  depends_on = [module.resourceGroup]
  source     = "../childModule/azure_pip"
  pip        = var.pip
}

module "network_interface" {
  depends_on = [module.public_ip]
  source     = "../childModule/azure_nic"
  nic        = var.nic
}

module "linux_vm" {
  depends_on = [module.network_interface]
  source     = "../childModule/linux_virtual_machine"
  linuxVm = var.linuxVm
}