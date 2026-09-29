output "subnets" {
  value       = google_compute_subnetwork.subnetwork
  description = "The created subnet resources"
}

output "subnet_self_link" {

  value = values(google_compute_subnetwork.subnetwork)[0].self_link

}