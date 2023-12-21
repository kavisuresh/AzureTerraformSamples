terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.51.0"
    }
  }
}

provider "azurerm" {

  subscription_id = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  client_id       = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  client_secret   = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  tenant_id       = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  features {

  }
}
