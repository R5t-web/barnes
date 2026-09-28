resource "google_compute_instance" "default" {
  project      = var.project_id
  zone         = var.zone
  name         = var.name
  machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = var.image

    }
  }
  network_interface {
    subnetwork = var.subnet
    access_config {}
  }
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }
  metadata  = var.metadata
  tags = var.tags
  labels = var.labels
}
