terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

}


provider "azurerm" {
  features {}
  subscription_id = "7ba4344c-3f49-4367-b873-8ecf28baf2a7"
  tenant_id       = "6deec2c5-721d-4a61-b264-98910ed37877"
}