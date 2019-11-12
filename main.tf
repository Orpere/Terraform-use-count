provider "null" {}
resource "null_resource" "server" {
  count = 2

  provisioner "local-exec" {
    command = "echo ${count.index}"
  }
}

