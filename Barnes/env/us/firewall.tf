# module "firewall" {


#   source = "../../modules/firewall-Rules"


#   project_id  = "terraform-practice-476512"


#   network_name = "hwp-vpc-test-prd-01"


#   rules = [


#     {

#       name        = "allow-http"

#       description = "Allow HTTP"


#       direction = "INGRESS"


#       priority = 1000


#       ranges = ["0.0.0.0/0"]


#       source_tags = []


#       source_service_accounts = []


#       target_tags = ["web-server"]


#       target_service_accounts = []


#       allow = [

#         {

#           protocol = "tcp"

#           ports    = ["80"]

#         }

#       ]


#       deny = []


#       log_config = {

#         metadata = "INCLUDE_ALL_METADATA"

#       }

#     },
#     {

#   name        = "allow-ilb-http"

#   description = "Allow Internal LB"


#   direction = "INGRESS"


#   priority = 1000


#   ranges = [

#     "10.200.1.0/24"

#   ]


#   source_tags = []


#   source_service_accounts = []


#   target_tags = [

#     "web-server"

#   ]


#   target_service_accounts = []


#   allow = [

#     {

#       protocol = "tcp"

#       ports = ["80"]

#     }

#   ]


#   deny = []


#   log_config = {

#     metadata = "INCLUDE_ALL_METADATA"

#   }

# },


#     {

#       name        = "allow-ssh"

#       description = "Allow SSH"


#       direction = "INGRESS"


#       priority = 1000


#       ranges = ["0.0.0.0/0"]


#       source_tags = []


#       source_service_accounts = []


#       target_tags = ["web-server"]


#       target_service_accounts = []


#       allow = [

#         {

#           protocol = "tcp"

#           ports    = ["22"]

#         }

#       ]


#       deny = []


#       log_config = {

#         metadata = "INCLUDE_ALL_METADATA"

#       }

#     }

#   ]

# }
