# locals {
#   project_org_id    = var.folder_id != "" ? null : var.org_id
#   project_folder_id = var.folder_id != "" ? var.folder_id : null
# }

resource "google_project" "project" {
  name                = var.project_name
  project_id          = var.project_id
  # org_id              = local.project_org_id
  # folder_id           = local.project_folder_id
  billing_account     = var.billing_account
  auto_create_network = var.auto_create_network
  labels              = var.labels
  deletion_policy = "DELETE"

  lifecycle {
    ignore_changes = [billing_account,]
  }

}
