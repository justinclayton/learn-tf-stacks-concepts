variable "string_prefix" {
  description = "The value of this variable"
  type        = string
}

variable "deployment_name" {
  description = "The name of the deployment"
  type        = string
  default     = "this was not provided"
}

resource "random_string" "string" {
  length  = 10
  special = false
  upper   = false
  lower   = true
}

locals {
  rendered_string = "${var.string_prefix}: ${var.deployment_name}"
}

output "rendered_string" {
  value = local.rendered_string
}

output "random_string" {
  value = random_string.string.result
}
