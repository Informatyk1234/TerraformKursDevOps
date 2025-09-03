variable "username" {
description = "Twoje imię"
type = string
default = "student"
}

resource "local_file" "user_file" {
filename = "${path.module}/${var.username}.txt"
content = "Cześć ${var.username}, to jest twój plik!"
}

output "user_file_path" {
value = local_file.user_file.filename
}