variable "name" {
description = "Moje imię"
type = string
default = "Kamil"
}

resource "local_file" "user_file" {
filename = "${path.module}/me.txt"
content = "Moje imię to: ${var.name}"
}

output "user_file_path" {
value = local_file.user_file.filename
}