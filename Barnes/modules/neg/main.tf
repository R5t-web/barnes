resource "google_compute_network_endpoint_group" "neg" {


  project = var.project_id


  name = var.name


  zone = var.zone


  network = var.network


  subnetwork = var.subnetwork


  network_endpoint_type = var.network_endpoint_type


  description = var.description

}




 