resource "google_project_service" "service" {

  for_each = toset(var.services)


  project = google_project.project.project_id

  service = each.value


  disable_on_destroy = false

}
