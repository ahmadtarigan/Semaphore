terraform {
  required_version = ">= 1.6"
}

variable "env_name" {
  type    = string
  default = "default"
}

resource "terraform_data" "test" {
  input = "opentofu-ok-${var.env_name}"
}

output "result" {
  value = terraform_data.test.output
}
