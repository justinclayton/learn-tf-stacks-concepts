# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

## Deployment configuration
## This is where you define how many instances of your "stacks" are deployed.
## Inputs to *deployments* act similar to how tfvars pass values into a root module
## This allows you to specify different values to the same "stack" definition.

## The docs often present X-Y diagrams using Components and Deployments,
## but a better representation would be Stacks and Deployments, with Components being sub-elements of a Stack

deployment "staging" {
  inputs = {
    deployment_name = "staging" # WHERE DO THESE GO?
  }
}

deployment "production" {
  inputs = {
    deployment_name = "production" # WHERE DO THESE GO?
  }
}

publish_output "staging_rendered_string" {
  value = deployment.staging.rendered_string
}

publish_output "staging_random_string" {
  value = deployment.staging.random_string
}

publish_output "production_rendered_string" {
  value = deployment.production.rendered_string
}

publish_output "production_random_string" {
  value = deployment.production.random_string
}
