variable "compartment_id" {
  description = "(Required) (Updatable) Compartment Identifier."
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Integration Instance Identifier."
  type        = string
}

variable "integration_instance_type" {
  description = "(Required) (Updatable) Standard or Enterprise type, Oracle Integration Generation 2 uses ENTERPRISE and STANDARD, Oracle Integration 3 uses ENTERPRISEX and STANDARDX"
  type        = string
}

variable "is_byol" {
  description = "(Required) (Updatable) Bring your own license."
  type        = bool
}

variable "message_packs" {
  description = "(Required) (Updatable) The number of configured message packs"
  type        = number
}

variable "alternate_custom_endpoints" {
  description = "(Optional) (Updatable) A list of alternate custom endpoints to be used for the integration instance URL (contact Oracle for alternateCustomEndpoints availability for a specific instance)."
  type = list(object({
    hostname              = string
    certificate_secret_id = optional(string)
  }))
  default = []
}

variable "consumption_model" {
  description = "(Optional) Optional parameter specifying which entitlement to use for billing purposes. Only required if the account possesses more than one entitlement."
  type        = string
  default     = null
}

variable "custom_endpoint" {
  description = "(Optional) (Updatable) Details for a custom endpoint for the integration instance (update)."
  type = object({
    hostname              = string
    certificate_secret_id = optional(string)
    dns_type              = optional(string)
    dns_zone_name         = string
  })
  default = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Usage of predefined tag keys. These predefined keys are scoped to namespaces. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "domain_id" {
  description = "(Optional) The OCID of the identity domain, that will be used to determine the corresponding Idcs Stripe and create an Idcs application within the stripe. This parameter is mutually exclusive with parameter: idcsAt, i.e only one of two parameters should be specified."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "idcs_at" {
  description = "(Optional) (Updatable) IDCS Authentication token. This is required for all realms with IDCS. Its optional as its not required for non IDCS realms."
  type        = string
  default     = null
  sensitive   = true
}

variable "is_disaster_recovery_enabled" {
  description = "(Optional) Is Disaster Recovery enabled or not."
  type        = bool
  default     = null
}

variable "is_visual_builder_enabled" {
  description = "(Optional) (Updatable) Visual Builder is enabled or not."
  type        = bool
  default     = null
}

variable "network_endpoint_details" {
  description = "(Optional) Base representation of a network endpoint."
  type = object({
    allowlisted_http_ips           = optional(set(string))
    is_integration_vcn_allowlisted = optional(bool)
    network_endpoint_type          = string
    allowlisted_http_vcns = optional(list(object({
      allowlisted_ips = optional(set(string))
      id              = string
    })))
    design_time = optional(object({
      allowlisted_http_ips = optional(list(string))
      allowlisted_http_vcns = optional(list(object({
        allowlisted_ips = optional(set(string))
        id              = string
      })))
    }))
    runtime = optional(object({
      allowlisted_http_ips = optional(list(string))
      allowlisted_http_vcns = optional(list(object({
        allowlisted_ips = optional(set(string))
        id              = string
      })))
    }))
  })
  default = null
}

variable "security_attributes" {
  description = "(Optional) (Updatable) Security attributes for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Oracle-ZPR\": {\"MaxEgressCount\": {\"value\": \"42\", \"mode\": \"enforce\"}}}`"
  type        = map(string)
  default     = null
}

variable "shape" {
  description = "(Optional) Shape"
  type        = string
  default     = null
}

variable "state" {
  description = "(Optional) (Updatable) The target state for the instance. Could be set to ACTIVE or INACTIVE"
  type        = string
  default     = null
}

variable "convert_instance_trigger" {
  description = "(Optional) (Updatable) An optional property when incremented triggers Convert Instance. Could be set to any integer value."
  type        = number
  default     = null
}

variable "data_retention_period" {
  description = "(Optional) Data retention period."
  type        = string
  default     = null
}

variable "disable_process_automation_trigger" {
  description = "(Optional) (Updatable) An optional property when incremented triggers Disable Process Automation. Could be set to any integer value."
  type        = number
  default     = null
}

variable "enable_process_automation_trigger" {
  description = "(Optional) (Updatable) An optional property when incremented triggers Enable Process Automation. Could be set to any integer value."
  type        = number
  default     = null
}

variable "extend_data_retention_trigger" {
  description = "(Optional) Extend data retention trigger."
  type        = number
  default     = null
}

variable "failover_trigger" {
  description = "(Optional) (Updatable) An optional property when incremented triggers Failover. Could be set to any integer value."
  type        = number
  default     = null
}

variable "log_group_id" {
  description = "(Optional) Log group id."
  type        = string
  default     = null
}
