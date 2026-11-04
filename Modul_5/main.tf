terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {}
}


provider "azurerm" {
  features {}
  # subscription_id hentes fra ARM_SUBSCRIPTION_ID
}
resource "azurerm_resource_group" "main" {
  name     = "${local.name_prefix}-rg"
  location = var.location
  #Tagger gjør det enkelt å finne igjen ressurser i et delt abonnement
  tags = local.common_tags
}
module "network" {
  source              = "./modules/network"
  project             = var.project
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  name_prefix         = local.name_prefix
}
