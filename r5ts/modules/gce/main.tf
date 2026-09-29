resource "google_compute_instance" "default" {


  project      = var.project_id

  zone         = var.zone

  name         = var.name

  machine_type = var.machine_type


  can_ip_forward = true


  boot_disk {

    initialize_params {

      image = var.image

    }

  }


  dynamic "network_interface" {


    for_each = var.network_interfaces


    content {


      subnetwork = network_interface.value.subnet


      dynamic "access_config" {


        for_each = network_interface.value.external_ip ? [1] : []


        content {}


      }

    }

  }


  service_account {


    email  = var.service_account_email

    scopes = var.service_account_scopes


  }


  metadata = var.metadata


  tags = var.tags


  labels = var.labels


}