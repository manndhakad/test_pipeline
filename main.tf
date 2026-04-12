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

resource "azurerm_resource_group" "rg_pipeline02" {
    name     = "rg-pipeline02"
    location = "central india"
  
}

resource "azurerm_resource_group" "rg_pipeline" {
    name     = "sanjay-rg-pipeline022"
    location = "central india"
  
}

resource "azurerm_storage_account" "st_pipeline" {
    name                    = "stpipeline11223"
    resource_group_name      = azurerm_resource_group.rg_pipeline.name
    location                 = azurerm_resource_group.rg_pipeline.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
  
}