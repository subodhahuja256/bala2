variable "vnetk" {
  
}

resource "azurerm_virtual_network" "vnkv" {
    for_each = var.vnetk
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  address_space       = each.value.address_space
}