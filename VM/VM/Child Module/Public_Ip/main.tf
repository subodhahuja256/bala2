variable "pipk" {
  
}

resource "azurerm_public_ip" "pipkm" {
    for_each = var.pipk
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = "Static"
}