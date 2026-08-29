data "azurerm_subnet" "datasubnet" {
    for_each = var.nic
  name                 = each.value.subnet
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "datapip" {
    for_each = var.nic
  name                = each.value.pipName
  resource_group_name = each.value.resource_group_name
}