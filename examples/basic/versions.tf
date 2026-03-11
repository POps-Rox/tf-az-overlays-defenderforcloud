
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0.0"
    }
    azurenoopsutils = {
      source  = "POps-Rox/azurenoopsutils"
      version = "~> 1.0.4"
    }
  }
}

provider "azurerm" {
  features {}
}