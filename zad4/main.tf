terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

variable "files_count" {
  type    = number
  default = 3
}

resource "local_file" "files" {
  count    = var.files_count
  filename = "${path.module}/plik_${count.index}.txt"
  content  = "To jest plik numer ${count.index}"
}