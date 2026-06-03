resource "oci_integration_private_endpoint_outbound_connection" "this" {
  integration_instance_id = var.integration_instance_id
  nsg_ids                 = var.nsg_ids
  state                   = var.state
  subnet_id               = var.subnet_id
}
