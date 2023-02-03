terraform {
  backend "azurerm" {
    resource_group_name  = "atulrg-opstesting"
    storage_account_name = "atulstorspk13"
    container_name       = "ctrspk13-kvgh"
    key                  = "spk13-kvgh.tfstate"
  }
}