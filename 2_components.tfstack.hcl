# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

## Component configuration
## Call modules here as "components". This is what is calling actual Terraform code.

component "hello-world" {
  source = "./hello-world"

  providers = {
    random = provider.random.this
  }

  ## Inputs to the component (i.e., passing in variables to the Terraform module).
  inputs = {
    my_variable = "oh hai mark, i mean world"
  }
}

output "my_variable" {
  value = component.hello-world.my_variable
  type  = string
}

output "deployment_name" {
  value = component.hello-world.deployment_name
  type  = string
}

output "random_string" {
  value = component.hello-world.random_string
  type  = string
}
