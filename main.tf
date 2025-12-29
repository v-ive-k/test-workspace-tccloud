resource "null_resource" "example" {
  count = var.resource_count

  provisioner "local-exec" {
    command = "echo Workspace ${count.index + 1} is being created"
  }
}
