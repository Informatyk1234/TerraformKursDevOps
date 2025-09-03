terraform {
required_providers {
random = {
source = "hashicorp/random"
}
}
}

provider "random" {}

resource "random_password" "password" {
length = 16
special = true
}

output "generated_password" {
value = random_password.password.result
sensitive = true
}