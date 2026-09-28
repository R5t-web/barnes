variable "vpn_gw_name" {
  description = "VPN gateway name."
  type        = string
}

variable "router_name" {
  description = "Router gateway name."
  type        = string
}


variable "network" {
  description = "VPC used for the gateway and routes."
  type        = string
}

variable "project_id" {
  description = "Project where resources will be created."
  type        = string
}

variable "region" {
  description = "Region used for resources."
  type        = string
}

variable "route_priority" {
  description = "Route priority, defaults to 1000."
  type        = number
  default     = 1000
}

variable "router_advertise_config" {
  description = "Router custom advertisement configuration, ip_ranges is a map of address ranges and descriptions."
  type = object({
    groups    = list(string)
    ip_ranges = map(string)
    mode      = string
  })
  default = null
}

variable "router_asn" {
  description = "Router ASN used for auto-created router."
  type        = number
  default     = 64514
}


# variable "tunnels" {
#   description = "VPN tunnel configurations, bgp_peer_options is usually null."
#   type = map(object({
#     bgp_session_range               = string
#     ike_version                     = number
#     vpn_gateway_interface           = number
#     peer_external_gateway_interface = number
#     shared_secret                   = string
#     router_interface_name           = string
#     # router_peer_name                = string
#     tunnel_name                     = string
#   }))
#   default = {}
# }

# variable "tunnels" {
#   description = "VPN tunnel configurations, bgp_peer_options is usually null."
#   type = map(object({
#     bgp_peer = object({
#       address = string
#       asn     = number
#     })
#     bgp_peer_options = object({
#       advertise_groups    = list(string)
#       advertise_ip_ranges = map(string)
#       advertise_mode      = string
#       route_priority      = number
#     })
#     bgp_session_range               = string
#     ike_version                     = number
#     vpn_gateway_interface           = number
#     peer_external_gateway_interface = number
#     shared_secret                   = string
#     router_interface_name           = string
#     # router_peer_name                = string
#     tunnel_name                     = string
#   }))
#   default = {}
# }

variable "vpn_gateway_self_link" {
  description = "self_link of existing VPN gateway to be used for the vpn tunnel"
  default     = null
}

variable "create_vpn_gateway" {
  description = "create a VPN gateway"
  default     = true
  type        = bool
}

variable "create_router" {
  description = "create a router"
  default     = true
  type        = bool
}

variable "labels" {
  description = "Labels for vpn components"
  type        = map(string)
  default     = {}
}

variable "peer_gcp_gateway" {
  description = "Self Link URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected."
  type        = string
  default     = null
}

variable "peer_external_gateway" {
  description = "Configuration of an external VPN gateway to which this VPN is connected."
  type = object({
    redundancy_type = string
    interfaces = list(object({
      id         = number
      ip_address = string
    }))
  })
  default = null
}

variable "external_vpn_gateway_name" {
  description = "External VPN gateway name"
  type        = string
  default     = ""
}

variable "tunnels" {

  description = "VPN tunnel configurations"


  type = map(object({


    bgp_peer = object({

      address = string

      asn     = number

    })


    bgp_peer_options = optional(object({

      advertise_groups    = list(string)

      advertise_ip_ranges = map(string)

      advertise_mode      = string

      route_priority      = number

    }))


    bgp_session_range               = string

    ike_version                     = number

    vpn_gateway_interface           = number

    peer_external_gateway_interface = number

    shared_secret                   = string

    router_interface_name           = string

    router_peer_name                = string

    tunnel_name                     = string

  }))


  default = {}

}
