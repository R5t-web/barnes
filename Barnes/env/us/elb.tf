# module "app_lb" {


#   source = "../../modules/load-balancer/http"


#   project = "terraform-practice-476512"


#   name = "practice-alb"


#   create_address = true


#   enable_ipv6 = false


#   create_ipv6_address = false


#   http_forward = true


#   ssl = false


#   https_redirect = false


#   firewall_networks = [

#     "hwp-vpc-test-prd-01"

#   ]


#   firewall_projects = [

#     "terraform-practice-476512"

#   ]


#   target_tags = [

#     "web-server"

#   ]


#   backends = {


#     web = {


#       port = 80


#       protocol = "HTTP"


#       port_name = "http"


#       description = "nginx backend"


#       enable_cdn = false


#       compression_mode = "DISABLED"


#       security_policy = null


#       custom_request_headers = []


#       custom_response_headers = []


#       timeout_sec = 30


#       connection_draining_timeout_sec = 0


#       session_affinity = null


#       affinity_cookie_ttl_sec = null


#       groups = [


#         {

#           group = module.web_umig.self_link


#           balancing_mode = "UTILIZATION"


#           capacity_scaler = 1


#           description = null


#           max_connections = null


#           max_connections_per_instance = null


#           max_connections_per_endpoint = null


#           max_rate = null


#           max_rate_per_instance = null


#           max_rate_per_endpoint = null


#           max_utilization = 0.8

#         }

#       ]


#       health_check = {


#         check_interval_sec = 5


#         timeout_sec = 5


#         healthy_threshold = 2


#         unhealthy_threshold = 2


#         request_path = "/"


#         port = 80


#         host = null


#         logging = true

#       }


#       log_config = {


#         enable = true


#         sample_rate = 1.0

#       }


#       iap_config = {


#         enable = false


#         oauth2_client_id = ""


#         oauth2_client_secret = ""

#       }

#     }

#   }

# }
 