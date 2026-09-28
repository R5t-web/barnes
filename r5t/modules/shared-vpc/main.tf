resource "google_compute_shared_vpc_host_project" "host" {

  project = var.host_project_id

}

resource "google_compute_shared_vpc_service_project" "service_projects" {

  for_each = toset(var.service_projects)


  host_project    = var.host_project_id

  service_project = each.value


  depends_on = [

    google_compute_shared_vpc_host_project.host

  ]

}

resource "google_compute_network" "vpc" {

  name                    = var.vpc_name

  project                 = var.host_project_id

  auto_create_subnetworks = false


  depends_on = [

    google_compute_shared_vpc_host_project.host

  ]

}
resource "google_compute_subnetwork" "subnets" {

  for_each = var.subnets


  name          = each.key

  region        = each.value.region

  project       = var.host_project_id

  network       = google_compute_network.vpc.id

  ip_cidr_range = each.value.cidr

}
