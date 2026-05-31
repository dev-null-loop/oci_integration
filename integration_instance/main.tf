resource "oci_integration_integration_instance" "this" {
  compartment_id            = var.compartment_id
  display_name              = var.display_name
  integration_instance_type = var.integration_instance_type
  is_byol                   = var.is_byol
  message_packs             = var.message_packs
  dynamic "alternate_custom_endpoints" {
    for_each = var.alternate_custom_endpoints
    iterator = ace
    content {
      hostname              = ace.value.hostname
      certificate_secret_id = ace.value.certificate_secret_id
    }
  }
  consumption_model = var.consumption_model
  dynamic "custom_endpoint" {
    for_each = var.custom_endpoint[*]
    iterator = ce
    content {
      hostname              = ce.value.hostname
      certificate_secret_id = ce.value.certificate_secret_id
      dns_type              = ce.value.dns_type
      dns_zone_name         = ce.value.dns_zone_name
    }
  }
  defined_tags                 = var.defined_tags
  domain_id                    = var.domain_id
  freeform_tags                = var.freeform_tags
  idcs_at                      = var.idcs_at
  is_disaster_recovery_enabled = var.is_disaster_recovery_enabled
  is_visual_builder_enabled    = var.is_visual_builder_enabled
  dynamic "network_endpoint_details" {
    for_each = var.network_endpoint_details[*]
    iterator = ned
    content {
      allowlisted_http_ips           = ned.value.allowlisted_http_ips
      is_integration_vcn_allowlisted = ned.value.is_integration_vcn_allowlisted
      network_endpoint_type          = ned.value.network_endpoint_type
      dynamic "allowlisted_http_vcns" {
        for_each = ned.value.allowlisted_http_vcns != null ? ned.value.allowlisted_http_vcns : []
        iterator = ahv
        content {
          allowlisted_ips = ahv.value.allowlisted_ips
          id              = ahv.value.id
        }
      }
      dynamic "design_time" {
        for_each = ned.value.design_time[*]
        iterator = dt
        content {
          allowlisted_http_ips = dt.value.allowlisted_http_ips
          dynamic "allowlisted_http_vcns" {
            for_each = dt.value.allowlisted_http_vcns != null ? dt.value.allowlisted_http_vcns : []
            iterator = ahv
            content {
              allowlisted_ips = ahv.value.allowlisted_ips
              id              = ahv.value.id
            }
          }
        }
      }
      dynamic "runtime" {
        for_each = ned.value.runtime[*]
        iterator = rt
        content {
          allowlisted_http_ips = rt.value.allowlisted_http_ips
          dynamic "allowlisted_http_vcns" {
            for_each = rt.value.allowlisted_http_vcns != null ? rt.value.allowlisted_http_vcns : []
            iterator = ahv
            content {
              allowlisted_ips = ahv.value.allowlisted_ips
              id              = ahv.value.id
            }
          }
        }
      }
    }
  }
  security_attributes                = var.security_attributes
  shape                              = var.shape
  state                              = var.state
  convert_instance_trigger           = var.convert_instance_trigger
  data_retention_period              = var.data_retention_period
  disable_process_automation_trigger = var.disable_process_automation_trigger
  enable_process_automation_trigger  = var.enable_process_automation_trigger
  extend_data_retention_trigger      = var.extend_data_retention_trigger
  failover_trigger                   = var.failover_trigger
  log_group_id                       = var.log_group_id
}
