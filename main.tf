terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.0"
    }
  }
}

provider "azurerm" {
    features {}
  
}

resource "azurerm_resource_group" "rg_pipeline03" {
    name     = "rg-pipeline03"
    location = "central india"
  
}

resource "azurerm_resource_group" "rg_pipeline22" {
    name     = "rg-pipeline0125"
    location = "central india"
  
}

resource "azurerm_storage_account" "st_pipeline2" {
    name                    = "stpipeline11224"
    resource_group_name      = azurerm_resource_group.rg_pipeline22.name
    location                 = azurerm_resource_group.rg_pipeline22.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
  
}