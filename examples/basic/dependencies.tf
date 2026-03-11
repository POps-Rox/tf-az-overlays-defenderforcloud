# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

module "azure_region" {
  source  = "azurenoops/overlays-azregions-lookup/azurerm"
  version = "~> 1.0.0"

  azure_region = var.azure_region
}

module "rg" {
  source  = "azurenoops/overlays-resource-group/azurerm"
  version = "~> 1.0.1"

  location                = module.azure_region.location_cli
  org_name                = var.org_name
  environment             = var.environment
  workload_name           = var.stack
  use_location_short_name = true
}
