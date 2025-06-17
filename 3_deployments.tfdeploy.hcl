# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

## Deployment configuration
## This is where you define how many instances of your components are deployed.
## Inputs to the deployment are...I have no idea actually, the docs are unclear.

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

publish_output "staging_deployment_name" {
  value = deployment.staging.deployment_name
}

publish_output "production_random_string" {
  value = deployment.production.random_string
}
