Deklaracja provider’a, którego będziemy używać.

Nawet jeśli nie podajemy żadnych parametrów ({}), Terraform musi wiedzieć, że będziemy korzystać z local.

Dlaczego:

Terraform potrzebuje aktywnego provider’a do zarządzania zasobami w resource.

Bez tej linii terraform plan/apply wyrzuci błąd.

resource "local_file" "hello" { ... }

Tworzymy zasób Terraform typu local_file i nadajemy mu nazwę "hello".

Resource to podstawowa jednostka infrastruktury w Terraform.

Nazwa "hello" pozwala odwoływać się do tego zasobu np. w output lub zależnościach innych zasobów: local_file.hello.

filename = "${path.module}/hello.txt"

filename określa ścieżkę i nazwę pliku, który Terraform utworzy.

${path.module} to zmienna wbudowana w Terraform, która zwraca ścieżkę do katalogu, w którym znajduje się plik ****.tf.

Dzięki temu plik hello.txt powstanie w tym samym katalogu, co main.tf.

content = "Witaj w Terraform!"

Określa zawartość pliku.

Kiedy wykonamy terraform apply, w pliku hello.txt pojawi się dokładnie tekst "Witaj w Terraform!".

Terraform pobiera wszystkie wymagane providery (tu: local) i przygotowuje katalog roboczy.

Tworzy folder .terraform i plik .terraform.lock.hcl do zarządzania wersjami providerów.

Bez terraform init Terraform nie wie, skąd wziąć providerów i nie może niczego stworzyć.

To pierwszy krok w każdym projekcie Terraform.

plan pozwala bezpiecznie podejrzeć zmiany: czy coś zostanie dodane, zmienione lub usunięte.

To jest bardzo ważne, szczególnie gdy pracujemy z chmurą – unikamy niechcianych kosztów.

terraform apply -auto-approve

<br />

Terraform wykonuje plan i tworzy plik hello.txt w katalogu projektu.
apply to realne wykonanie zmian, które wcześniej widzieliśmy w plan.

-auto-approve pomija pytanie o potwierdzenie, co jest wygodne w ćwiczeniach lokalnych.

W katalogu projektu pojawia się plik hello.txt z tekstem "Witaj w Terraform!".

init → plan → apply → destroy

Zad dom.

POBRAĆ JENKINSA PRZEZ DOCKER HUBA