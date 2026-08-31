
rgkv = {
  rg1 = {
    name     = "kamrg"
    location = "Australia East"
  }
  rg2 = {
    name     = "kamrg2"
    location = "Australia East"
  }
  rg3 = {
    name     = "kamrg3"
    location = "Australia East"
  }
   rg4 = {
    name     = "kamrg4"
    location = "Australia East"
  }
}


vnetk = {
  vnetk1 = {
    name                = "kvnet"
    resource_group_name = "kamrg"
    location            = "Australia East"
    address_space       = ["10.0.0.0/16"]
  }
}



snetk = {
  subnet1 = {
    name                 = "FEnd-subnet"
    resource_group_name  = "kamrg"
    virtual_network_name = "kvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "Bend-subnet"
    resource_group_name  = "kamrg"
    virtual_network_name = "kvnet"
    address_prefixes     = ["10.0.2.0/24"]

  }
}

pipk = {
  pipk1 = {
    name                = "pipFE"
    resource_group_name = "kamrg"
    location            = "Australia East"
  }
  pipk2 = {
    name                = "pipBE"
    resource_group_name = "kamrg"
    location            = "Australia East"
  }
}

vms = {
  vm1 = {
    name                 = "nicFE"
    location             = "Australia East"
    resource_group_name  = "kamrg"
    snetkam              = "FEnd-subnet"
    vnetname             = "kvnet"
    pip_name             = "pipFE"
    vm_name              = "VMk1"
    admin_username       = "kamlesh123"
    admin_password       = "Kamlesh123"
    size                 = "Standard_B1s"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  vm2 = {
    name                 = "nicBE"
    location             = "Australia East"
    resource_group_name  = "kamrg"
    snetkam              = "Bend-subnet"
    vnetname             = "kvnet"
    pip_name             = "pipBE"
    vm_name              = "VMk2"
    admin_username       = "kamlesh123"
    admin_password       = "Kamlesh123"
    size                 = "Standard_B1s"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
}

