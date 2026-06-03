variable "integration_instance_id" {
  description = ""
  type        = string
}

variable "nsg_ids" {
  description = ""
  type        = list(string)
  default     = []
}

variable "state" {
  description = ""
  type        = string
  default     = null
}

variable "subnet_id" {
  description = ""
  type        = string
}
