terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.52.0"
    }
  }
}

provider "azurerm" {
 subscription_id = "bd448df6-3e08-4554-91d1-a71259e2fcd7"
 client_id       = "cb1c1783-dc29-4ae8-9f18-53d44f56be33"
 client_secret   = "~Z48Q~z06lN8jsdQeQ-XjyGFMcbuL6Qvsg9EVc2I"
 tenant_id       = "df275205-c127-4645-b71b-85442a2b3266"
 features {}

}




resource "azurerm_resource_group" "hbutest_lab01" {
  name     = var.rgnavn
  location = var.location
}

resource "azurerm_storage_account" "hbuteststoragelab" {
  name                     = var.storage_account_name
  resource_group_name      = var.rgnavn
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = "true"
  depends_on = [
    azurerm_resource_group.hbutest_lab01
  ]
}


resource "azurerm_storage_container" "hbutestcont-lab01" {
  name                  = var.hbutestcont-lab01
  storage_account_name  = var.storage_account_name
  container_access_type = "blob"
  depends_on = [
    azurerm_storage_account.hbuteststoragelab
  ]
}
resource "azurerm_storage_blob" "hbutestblob-lab01" {
  name                   = var.hbutestblob-lab01
  storage_account_name   = var.storage_account_name
  storage_container_name = var.hbutestcont-lab01
  type                   = "Block"
  source                 = var.hbutestblob-lab01
  depends_on = [
    azurerm_storage_container.hbutestcont-lab01
  ]
}