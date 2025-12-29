resource "null_resource" "example" {
  count = 2

  provisioner "local-exec" {
    command = "echo Workspace ${count.index + 1} is being created"
  }
}
