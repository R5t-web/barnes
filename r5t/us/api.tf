resource "google_project_service" "network_services" {

  for_each = toset([

    "compute.googleapis.com",

    "dns.googleapis.com",

    "servicenetworking.googleapis.com",

    "logging.googleapis.com",

    "monitoring.googleapis.com"

  ])


  project = module.network_host_project.project_id

  service = each.value


  disable_on_destroy = false

}
resource "google_project_service" "workload_compute" {

  project = module.workload_host_project.project_id

  service = "compute.googleapis.com"


  disable_on_destroy = false

}