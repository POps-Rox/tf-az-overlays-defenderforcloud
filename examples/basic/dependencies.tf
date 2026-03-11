# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

module "azure_region" {
  source  = "github.com/POps-Rox/tf-az-overlays-azregionslookup"
  version = "~> 1.0.0"

  azure_region = var.azure_region
}

module "rg" {
  source  = "github.com/POps-Rox/tf-az-overlays-resourcegroup"
  version = "~> 1.0.1"

  location                = module.azure_region.location_cli
  org_name                = var.org_name
  environment             = var.environment
  workload_name           = var.stack
  use_location_short_name = true
}
