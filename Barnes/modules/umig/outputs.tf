# output "self_links" {
#   description = "List of self-links for unmanaged instance groups"
#   value       = google_compute_instance_group.instance_group.*.self_link
# }
output "self_link" {

  value = google_compute_instance_group.instance_group.self_link

}

output "umig_details" {
  description = "List of all details for unmanaged instance groups"
  value       = google_compute_instance_group.instance_group.*
}