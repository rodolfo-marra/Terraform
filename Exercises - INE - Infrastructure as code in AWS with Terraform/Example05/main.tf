locals {
  name = "rody"
}

output "my_name" {
  value = "${local.name}"
}