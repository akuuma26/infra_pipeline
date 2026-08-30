rg = {
  rg1 = {
    name     = "abhi-lz"
    location = "polandcentral"
  }
  rg2 = {
    name     = "abhishek-LZ"
    location = "spaincentral"
  }
  rg3 = {
    name     = "abhishek-LZ-feature"
    location = "spaincentral"
  }
  rg4 = {
    name     = "abhishek-LZ-features"
    location = "spaincentral"
  }
}

vnet = {
  vnet1 = {
    name                = "abhi-lz-vnet"
    location            = "polandcentral"
    resource_group_name = "abhi-lz"
    address_space       = ["10.1.0.0/16"]
  }
  vnet2 = {
    name                = "abhishek-lz-vnet"
    location            = "spaincentral"
    resource_group_name = "abhishek-LZ"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    subName              = "abhi-lz-subnet"
    resource_group_name  = "abhi-lz"
    virtual_network_name = "abhi-lz-vnet"
    address_prefixes     = ["10.1.0.0/24"]
  }
  subnet2 = {
    subName              = "abhishek-lz-vnet"
    resource_group_name  = "abhishek-LZ"
    virtual_network_name = "abhishek-lz-vnet"
    address_prefixes     = ["10.0.0.0/24"]
  }
}

pip = {
  pip1 = {
    name                = "abhi-lz-pip"
    resource_group_name = "abhi-lz"
    location            = "polandcentral"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "abhishek-LZ-pip"
    resource_group_name = "abhishek-LZ"
    location            = "spaincentral"
    allocation_method   = "Static"
  }
}

nic = {
  nic1 = {
    nicName              = "abhi-lz-nic"
    subnet               = "abhi-lz-subnet"
    resource_group_name  = "abhi-lz"
    virtual_network_name = "abhi-lz-vnet"
    pipName              = "abhi-lz-pip"
    location             = "polandcentral"
  }
  nic2 = {
    nicName              = "abhishek-LZ-nic"
    subnet               = "abhishek-lz-vnet"
    resource_group_name  = "abhishek-LZ"
    virtual_network_name = "abhishek-lz-vnet"
    pipName              = "abhishek-LZ-pip"
    location             = "spaincentral"
  }
}

linuxVm = {
  linuxVm1 = {
    vmname              = "abhi-lz-vm"
    resource_group_name = "abhishek-LZ"
    location            = "spaincentral"
    size                = "Standard_D2s_v3"
    admin_username      = "adminuser"
    nicName             = "abhishek-LZ-nic"
    admin_password      = "Abhi@#99739"
  }
}