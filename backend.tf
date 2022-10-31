terraform {
  backend "azurerm" {
    resource_group_name  = "atulrg-opstesting"
    storage_account_name = "atulstorspk13"
    container_name       = "ctrspk13-kv"
    key                  = "spk13-kv.tfstate"
  }
}
