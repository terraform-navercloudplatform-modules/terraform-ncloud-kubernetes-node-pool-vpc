variable "node_pool_name" {
  description = "(Required) Node pool name."
  type        = string
}

variable "cluster_uuid" {
  description = "(Required) Cluster uuid."
  type        = string
}

variable "node_count" {
  description = "(Optional) Number of nodes. Required when autoscale is disabled."
  type        = number
  default     = null
}

variable "product_code" {
  description = "(Optional) Product code. Required for XEN/RHV cluster nodepool."
  type        = string
  default     = null
}

variable "server_spec_code" {
  description = "(Optional) Server spec code. Required for KVM cluster nodepool."
  type        = string
  default     = null
}

variable "storage_size" {
  description = "(Optional) Default storage size for KVM nodepool. Default is 100GB."
  type        = number
  default     = 100
}

variable "software_code" {
  description = "(Optional) Server image code."
  type        = string
  default     = null
}

variable "autoscale" {
  description = <<EOF
  (Optional) Auto scaling configuration.
  - enabled - (Required) Auto scaling availability.
  - max - (Required) Maximum number of nodes available for auto scaling.
  - min - (Required) Minimum number of nodes available for auto scaling.
  EOF
  type = object({
    enabled = bool
    max     = number
    min     = number
  })
  default = {
    enabled = false
    max     = null
    min     = null
  }
  validation {
    condition     = !(var.autoscale.enabled == true && (var.autoscale.max == null || var.autoscale.min == null))
    error_message = "Auto scaling is enabled, but max and min must be set."
  }
  validation {
    condition     = !(var.autoscale.enabled == true && var.autoscale.max < var.autoscale.min)
    error_message = "Auto scaling is enabled, but max cannot be less than min."
  }
}

variable "subnet_no_list" {
  description = "(Optional) Subnet no list."
  type        = list(string)
  default     = null
}

variable "k8s_version" {
  description = "(Optional) Kubernetes version. Only upgrade is supported."
  type        = string
  default     = null
}

variable "label" {
  description = <<EOF
  (Optional) NodePool label.
  - key - (Required) Label key.
  - value - (Required) Label value.
  EOF
  type = object({
    key   = string
    value = string
  })
  default = null
}

variable "taint" {
  description = <<EOF
  (Optional) NodePool taint.
  - key - (Required) Taint key.
  - value - (Required) Taint value.
  - effect - (Required) Taint effect.
  EOF
  type = object({
    key    = string
    value  = string
    effect = string
  })
  default = null
}
