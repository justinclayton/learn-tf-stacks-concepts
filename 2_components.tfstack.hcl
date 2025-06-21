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
    string_prefix = "hello world"
    # take value of *stack variable* (declared in *tfstack.hcl, value defined in *tfdeploy.hcl)
    # and pass it into *component variable* (declared in hello-world/variables.tf, value defined here)
    deployment_name = var.deployment_name
  }
}

output "rendered_string" {
  value = component.hello-world.rendered_string
  type  = string
}

output "random_string" {
  value = component.hello-world.random_string
  type  = string
}
