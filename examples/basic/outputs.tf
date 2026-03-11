# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

output "security_center_pricing_ids" {
  value = module.mod_security_center.security_center_pricing_ids
}

output "security_center_contact_id" {
  value = module.mod_security_center.security_center_contact_id
}
