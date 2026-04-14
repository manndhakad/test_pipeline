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

resource "azurerm_resource_group" "rg_pipeline011" {
    name     = "rg-pipeline333"
    location = "central india"
  
}
