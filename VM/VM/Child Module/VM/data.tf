



data "azurerm_subnet" "datasnet" {
  for_each             = var.vms
  name                 = each.value.snetkam
  virtual_network_name = each.value.vnetname
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "datapip" {

  for_each            = var.vms
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}


