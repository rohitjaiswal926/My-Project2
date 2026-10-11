terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "rjbackendstoragerg"
    storage_account_name = "rjbackendstorage"
    container_name       = "rjcontainer"
    key                  = "preprod.tfstate1"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 5.9.0"
    }
  }
}
provider "azurerm" {
  features {}
}