output "id" {
  description = "The identifier of the resource."
  value       = oci_integration_integration_instance.this.id
}

output "state" {
  description = "The current state of the resource."
  value       = oci_integration_integration_instance.this.state
}

output "instance_url" {
  description = "The instance_url of the resource."
  value       = oci_integration_integration_instance.this.instance_url
}

output "instance_design_time_url" {
  description = "The instance_design_time_url of the resource."
  value       = oci_integration_integration_instance.this.instance_design_time_url
}

output "lifecycle_details" {
  description = "The lifecycle_details of the resource."
  value       = oci_integration_integration_instance.this.lifecycle_details
}

output "time_created" {
  description = "The date and time the resource was created, expressed in RFC 3339 timestamp format."
  value       = oci_integration_integration_instance.this.time_created
}

output "time_updated" {
  description = "The date and time the resource was updated, expressed in RFC 3339 timestamp format."
  value       = oci_integration_integration_instance.this.time_updated
}
