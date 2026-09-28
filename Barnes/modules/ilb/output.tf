output "frontend_ip" {

  value = google_compute_forwarding_rule.ilb.ip_address

}
 
output "backend_service" {

  value = google_compute_region_backend_service.backend.self_link

}
#  output "internal_lb_ip" {


#   value = module.internal_lb.frontend_ip

# }
# output "ilb_ip" {


#   value = module.internal_lb.vip

# }