terraform {
  backend "azurerm" {
    resource_group_name  = "atulrg-ado"
    storage_account_name = "atulado"
    container_name       = "ctrspk13-kvgh"
    key                  = "spk13-kvgh.tfstate"
  }
}