resource "google_compute_forwarding_rule" "ilb" {


  project = var.project_id


  region = var.region


  name = var.name


  load_balancing_scheme = "INTERNAL"


  backend_service = google_compute_region_backend_service.backend.id


  network = var.network


  subnetwork = var.subnetwork


  ip_protocol = "TCP"


  ports = [var.port]

}
 
resource "google_compute_health_check" "tcp_hc" {


  project = var.project_id


  name = "${var.name}-hc"


  tcp_health_check {

    port = var.health_check_port

  }

}
 
resource "google_compute_region_backend_service" "backend" {


  project = var.project_id


  region = var.region


  name = "${var.name}-backend"


  protocol = "TCP"


  load_balancing_scheme = "INTERNAL"


  health_checks = [

    google_compute_health_check.tcp_hc.id

  ]


dynamic "backend" {


  for_each = var.backend_groups


  content {


    group = backend.value


    balancing_mode = "CONNECTION"


    # capacity_scaler = 1.0

  }

}

}
 