# module "barnes_vpn" {


#   source = "../../modules/vpn-ha"


#   project_id = "shared-vpc-service-509614"


#   region = "us-west2"


#   network = "projects/shared-vpc-service-509614/global/networks/shared-vpc-service-509614"


#   vpn_gw_name = "ba-usw2-ha-vpn"


#   router_name = "ba-usw2-cr"


#   router_asn = 64514


#   create_vpn_gateway = true


#   create_router = true


#   peer_gcp_gateway = module.practice_vpn.self_link


#   tunnels = {


#     tunnel1 = {


#       tunnel_name                     = "ba-usw2-t01"

#       router_interface_name           = "if0"

#       router_peer_name                = "peer0"


#       vpn_gateway_interface           = 0

#       peer_external_gateway_interface = 0


#       ike_version = 2


#       shared_secret = "BarnesLab2026!"


#       bgp_session_range = "169.254.0.1/30"


#       bgp_peer = {

#         address = "169.254.0.2"

#         asn     = 64515

#       }

#     }


#     tunnel2 = {


#       tunnel_name                     = "ba-usw2-t02"

#       router_interface_name           = "if1"

#       router_peer_name                = "peer1"


#       vpn_gateway_interface           = 1

#       peer_external_gateway_interface = 1


#       ike_version = 2


#       shared_secret = "BarnesLab2026!"


#       bgp_session_range = "169.254.1.1/30"


#       bgp_peer = {

#         address = "169.254.1.2"

#         asn     = 64515

#       }

#     }

#   }


#   router_advertise_config = {


#     mode = "CUSTOM"


#     groups = []


#     ip_ranges = {

#       "10.200.1.128/26" = "Barnes subnet"

#     }

#   }

# }

# module "practice_vpn" {


#   source = "../../modules/vpn-ha"


#   project_id = "terraform-practice-476512"


#   region = "us-west2"


#   network = "projects/terraform-practice-476512/global/networks/hwp-vpc-test-prd-01"


#   vpn_gw_name = "practice-ha-vpn"


#   router_name = "practice-cr"


#   router_asn = 64515


#   create_vpn_gateway = true


#   create_router = true


#   peer_gcp_gateway = module.barnes_vpn.self_link


#   tunnels = {


#     tunnel1 = {


#       tunnel_name                     = "practice-t01"

#       router_interface_name           = "if0"

#       router_peer_name                = "peer0"


#       vpn_gateway_interface           = 0

#       peer_external_gateway_interface = 0


#       ike_version = 2


#       shared_secret = "BarnesLab2026!"


#       bgp_session_range = "169.254.0.2/30"


#       bgp_peer = {

#         address = "169.254.0.1"

#         asn     = 64514

#       }

#     }


#     tunnel2 = {


#       tunnel_name                     = "practice-t02"

#       router_interface_name           = "if1"

#       router_peer_name                = "peer1"


#       vpn_gateway_interface           = 1

#       peer_external_gateway_interface = 1


#       ike_version = 2


#       shared_secret = "BarnesLab2026!"


#       bgp_session_range = "169.254.1.2/30"


#       bgp_peer = {

#         address = "169.254.1.1"

#         asn     = 64514

#       }

#     }

#   }


#   router_advertise_config = {


#     mode = "CUSTOM"


#     groups = []


#     ip_ranges = {

#       "10.200.1.0/25" = "Practice subnet"

#     }

#   }

# }
 