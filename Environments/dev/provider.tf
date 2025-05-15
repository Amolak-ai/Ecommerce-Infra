terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = "rg-terraformstate"
      storage_account_name = "dev3456"
      container_name       = "tfstate"
      key                  = "dev.terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
  subscription_id = "bf1596c6-e1fe-4c77-93ea-0e7bc5739622"
}