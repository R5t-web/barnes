resource "google_compute_instance_group" "instance_group" {
  name        = var.name
  project     = var.project
  description = "Terraform test instance group"


  instances = var.instances

  dynamic "named_port" {
    for_each = var.named_ports
    content {
      name = named_port.value.name
      port = named_port.value.port
    }
  }

  zone = var.zone       
}