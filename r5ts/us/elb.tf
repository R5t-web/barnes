# module "use4_https_elb" {


#   source = "../modules/load-balancer/http"


#   project = module.network_host_project.project_id


#   name = "use4-prod-elb"


#   ssl = true


#   https_redirect = true


#   managed_ssl_certificate_domains = [

#     "app.r5t.lol"

#   ]


#   firewall_networks = [

#     "r5t-ba-use4-untrusted-vpc"

#   ]


#   firewall_projects = [

#     module.network_host_project.project_id

#   ]


#   target_tags = [

#     "web-server"

#   ]


#   backends = {


#     default = {


#       protocol  = "HTTP"

#       port      = 80

#       port_name = "http"


#       description = "Web Backend"


#       enable_cdn = false


#       compression_mode = "DISABLED"


#       security_policy = null


#       custom_request_headers = []


#       custom_response_headers = []


#       timeout_sec = 30


#       connection_draining_timeout_sec = 10


#       session_affinity = null


#       affinity_cookie_ttl_sec = null


#       health_check = {


#         check_interval_sec = 5


#         timeout_sec = 5


#         healthy_threshold = 2


#         unhealthy_threshold = 2


#         request_path = "/"


#         port = 80


#         host = ""


#         logging = true

#       }


#       log_config = {

#         enable      = true

#         sample_rate = 1

#       }


#       groups = [


#         {

#           group = module.web_umig_a.self_link


#           balancing_mode = "UTILIZATION"


#           capacity_scaler = 1


#           description = ""


#           max_connections = null

#           max_connections_per_instance = null

#           max_connections_per_endpoint = null


#           max_rate = null

#           max_rate_per_instance = null

#           max_rate_per_endpoint = null


#           max_utilization = 0.8

#         },


#         {

#           group = module.web_umig_b.self_link


#           balancing_mode = "UTILIZATION"


#           capacity_scaler = 1


#           description = ""


#           max_connections = null

#           max_connections_per_instance = null

#           max_connections_per_endpoint = null


#           max_rate = null

#           max_rate_per_instance = null

#           max_rate_per_endpoint = null


#           max_utilization = 0.8

#         }


#       ]


#       iap_config = {

#         enable = false

#         oauth2_client_id = ""

#         oauth2_client_secret = ""

#       }


#     }

#   }


# }