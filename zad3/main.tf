terraform {
required_providers {
random = {
source = "hashicorp/random"
}
local = {
source = "hashicorp/local"
}
}
}

provider "random" {}
provider "local" {}

resource "random_pet" "pet" {
length = 2
}

resource "local_file" "pet_file" {
filename = "${path.module}/pet.txt"
content = "Twoje zwierzątko na dziś to: ${random_pet.pet.id}"
}