variable "my_variable" {
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

output "my_variable" {
  value = var.my_variable
}
output "deployment_name" {
  value = var.deployment_name
}
output "random_string" {
  value = random_string.string.result
}
