resource "azurerm_resource_group" "rg" {
    for_each = var.rg
    name = each.name
    location = each.location
}