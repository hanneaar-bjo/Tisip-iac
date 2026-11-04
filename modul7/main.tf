terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.4"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demo" {
  name=var.rg_name
  location = var.location

  tags = {
    module = "module_7"
  }
}

module "network" {
  source = "./modules/network"

  rg_name  = azurerm_resource_group.demo.name
  location = var.location
  tags     = azurerm_resource_group.demo.tags
}