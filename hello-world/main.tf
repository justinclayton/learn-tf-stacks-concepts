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

resource "null_resource" "this" {
  triggers = {
    my_variable   = var.my_variable
    random_string = random_string.string.result
  }

  provisioner "local-exec" {
    command = "echo my_variable: ${var.my_variable}, deployment_name: ${var.deployment_name}, random_string: ${random_string.string.result}"
  }
}
