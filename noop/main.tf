resource "null_resource" "noop" {
  triggers = {
    noop_var = var.noop_var
  }
}

resource "local_file" "file" {
  filename = "${path.module}/noop.txt"
  content  = "noop_var: ${var.noop_var}"
}

resource "random_string" "string" {
  length  = 10
  special = false
  upper   = false
  lower   = true
}
