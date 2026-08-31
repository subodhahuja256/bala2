variable "rgkv" {
}

resource "azurerm_resource_group" "r" {
    for_each = var.rgkv
     name     = each.value.name
     location = each.value.location
  
}