resource "oci_integration_oracle_managed_custom_endpoint" "this" {
  dns_type                = var.dns_type
  dns_zone_name           = var.dns_zone_name
  hostname                = var.hostname
  integration_instance_id = var.integration_instance_id
  managed_type            = var.managed_type
  state                   = var.state
}
