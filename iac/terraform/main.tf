terraform {
  required_version = ">= 1.4"
}

variable "env_name" {
  type    = string
  default = "lab"
}

resource "terraform_data" "hello" {
  input = "hello from ${var.env_name}"
}

output "message" {
  value = terraform_data.hello.output
}
