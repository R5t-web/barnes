# Terraform Google Cloud VPN HA Module
This module makes it easy to deploy either GCP-to-On-prem Cloud HA VPN.

## Compatibility

This module is meant for use with Terraform 0.13+ and tested using Terraform 1.0+.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vpn_gw_name | VPN gateway name | string | n/a | yes |
| create\_vpn\_gateway | create a VPN gateway | `bool` | `true` | no |
| labels | Labels for vpn components | `map(string)` | `{}` | no |
| network | VPC used for the gateway and routes. | `string` | n/a | yes |
| peer\_external\_gateway | Configuration of an external VPN gateway to which this VPN is connected. | <pre>object({<br>    redundancy_type = string<br>    interfaces = list(object({<br>      id         = number<br>      ip_address = string<br>    }))<br>  })</pre> | `null` | no |
| peer\_gcp\_gateway | Self Link URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected. | `string` | `null` | no |
| project\_id | Project where resources will be created. | `string` | n/a | yes |
| region | Region used for resources. | `string` | n/a | yes |
| route\_priority | Route priority, defaults to 1000. | `number` | `1000` | no |
| router\_advertise\_config | Router custom advertisement configuration, ip\_ranges is a map of address ranges and descriptions. | <pre>object({<br>    groups    = list(string)<br>    ip_ranges = map(string)<br>    mode      = string<br>  })</pre> | `null` | no |
| router\_asn | Router ASN used for auto-created router. | `number` | `64514` | no |
| router\_name | Name of router, leave blank to create one. | `string` | `""` | no |
| tunnels | VPN tunnel configurations, bgp\_peer\_options is usually null. | <pre>map(object({<br>    bgp_peer = object({<br>      address = string<br>      asn     = number<br>    })<br>    bgp_peer_options = object({<br>      advertise_groups    = list(string)<br>      advertise_ip_ranges = map(string)<br>      advertise_mode      = string<br>      route_priority      = number<br>    })<br>    bgp_session_range               = string<br>    ike_version                     = number<br>    vpn_gateway_interface           = number<br>    peer_external_gateway_interface = number<br>    shared_secret                   = string<br>  }))</pre> | `{}` | no |
| vpn\_gateway\_self\_link | self\_link of existing VPN gateway to be used for the vpn tunnel | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| gateway | HA VPN gateway resource. |
| random\_secret | Generated secret. |
| router | Router resource (only if auto-created). |
| router\_name | Router name. |
| self\_link | HA VPN gateway self link. |
| tunnel\_names | VPN tunnel names. |
| tunnel\_self\_links | VPN tunnel self links. |
| tunnels | VPN tunnel resources. |



