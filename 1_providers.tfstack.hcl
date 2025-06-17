# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

## Provider configuration
## What normally goes in providers.tf / terraform.tf goes here.

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }
}

provider "random" "this" {}
