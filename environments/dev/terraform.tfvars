rg = {
  rg1 = {
    name     = "abhi-rg"
    location = "francecentral"
  }
}
vnet = {
  vnet1 = {
    name                = "abhi-vnet"
    location            = "francecentral"
    resource_group_name = "abhi-rg"
    address_space       = ["10.1.0.0/16"]
  }
}