# resource "google_compute_firewall" "allow_lb_healthcheck" {


#   project = module.network_host_project.project_id


#   name    = "allow-lb-healthcheck"


#   network = "r5t-ba-use4-untrusted-vpc"


#   allow {

#     protocol = "tcp"

#     ports    = ["80"]

#   }


#   source_ranges = [

#     "35.191.0.0/16",

#     "130.211.0.0/22"

#   ]


#   target_tags = [

#     "web-server"

#   ]

# }

 
 
# resource "google_compute_firewall" "allow_http" {


#   project = module.network_host_project.project_id


#   name    = "allow-http"


#   network = "r5t-ba-use4-untrusted-vpc"


#   allow {

#     protocol = "tcp"

#     ports    = ["80"]

#   }


#   source_ranges = [

#     "0.0.0.0/0"

#   ]


#   target_tags = [

#     "web-server"

#   ]

# }

#  resource "google_compute_firewall" "lb_healthcheck" {


#   project = module.network_host_project.project_id


#   name = "allow-elb-healthcheck"


#   network = "r5t-ba-use4-untrusted-vpc"


#   allow {

#     protocol = "tcp"

#     ports = ["80"]

#   }


#   source_ranges = [

#     "35.191.0.0/16",

#     "130.211.0.0/22"

#   ]


#   target_tags = [

#     "web-server"

#   ]

# }