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
