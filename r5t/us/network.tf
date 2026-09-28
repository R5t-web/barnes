################# US-Untrust-VPC and Sub-net ####################

module "US_untrust_VPC" {
  source                                 = "../modules/vpc"
  network_name                           = "r5t-ba-use4-untrusted-vpc"
  auto_create_subnetworks                = false
  routing_mode                           = "GLOBAL"
  project_id                             = "ranjeet-use4-network-host-prj"
  delete_default_internet_gateway_routes = true
  depends_on = [google_project_service.network_services]
}
module "US_untrust_vpc_subnets" {
  depends_on   = [module.US_untrust_VPC]
  source       = "../modules/subnets"
  project_id   = "ranjeet-use4-network-host-prj"
  network_name = "r5t-ba-use4-untrusted-vpc"

  subnets = [
    {
      subnet_name           = "r5t-ba-use4-untrusted-vpc-sn"
      subnet_ip             = "10.200.1.0/25"
      subnet_region         = "us-east4"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    }
  ]
}

################# US-trust-VPC and Sub-net ####################

module "US_trust_VPC" {
  source                                 = "../modules/vpc"
  network_name                           = "r5t-ba-use4-trusted-vpc"
  auto_create_subnetworks                = false
  routing_mode                           = "GLOBAL"
  project_id                             = "ranjeet-use4-network-host-prj"
  delete_default_internet_gateway_routes = true
}
module "US_trust_vpc_subnets" {
  depends_on   = [module.US_trust_VPC]
  source       = "../modules/subnets"
  project_id   = "ranjeet-use4-network-host-prj"
  network_name = "r5t-ba-use4-trusted-vpc"

  subnets = [
    {
      subnet_name           = "r5t-ba-use4-trusted-vpc-sn"
      subnet_ip             = "10.200.0.128/25"
      subnet_region         = "us-east4"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    }
  ]
}

################# US-transit-VPC and Sub-net ####################

module "US_transit_VPC" {
  source                                 = "../modules/vpc"
  network_name                           = "r5t-ba-use4-transit-vpc"
  auto_create_subnetworks                = false
  routing_mode                           = "GLOBAL"
  project_id                             = "ranjeet-use4-network-host-prj"
  delete_default_internet_gateway_routes = true
}
module "US_transit_vpc_subnets" {
  depends_on   = [module.US_transit_VPC]
  source       = "../modules/subnets"
  project_id   = "ranjeet-use4-network-host-prj"
  network_name = "r5t-ba-use4-transit-vpc"

  subnets = [
    {
      subnet_name           = "r5t-ba-use4-transit-vpc-sn"
      subnet_ip             = "10.200.2.0/24"
      subnet_region         = "us-east4"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    }
  ]
}

################# US-mgt-VPC and Sub-net ####################

module "US_mgt_VPC" {
  source                                 = "../modules/vpc"
  network_name                           = "r5t-ba-use4-mgt-vpc"
  auto_create_subnetworks                = false
  routing_mode                           = "GLOBAL"
  project_id                             = "ranjeet-use4-network-host-prj"
  delete_default_internet_gateway_routes = true
}
module "US_mgt_vpc_subnets" {
  depends_on   = [module.US_transit_VPC]
  source       = "../modules/subnets"
  project_id   = "ranjeet-use4-network-host-prj"
  network_name = "r5t-ba-use4-mgt-vpc"

  subnets = [
    {
      subnet_name           = "r5t-ba-use4-mgt-vpc-sn"
      subnet_ip             = "10.200.3.0/24"
      subnet_region         = "us-east4"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    }
  ]
}

# module "US_Shared_VPC" {
#   source                                 = "../../modules/vpc"
#   network_name                           = "shared-vpc-service-509614"
#   auto_create_subnetworks                = false
#   routing_mode                           = "GLOBAL"
#   project_id                             = "shared-vpc-service-509614"
#   delete_default_internet_gateway_routes = true
# }
# module "US_Shared_vpc_subnets" {
#   depends_on   = [module.US_Shared_VPC]
#   source       = "../../modules/subnets"
#   project_id   = "shared-vpc-service-509614"
#   network_name = "shared-vpc-service-509614"

#   subnets = [
#     {
#       subnet_name           = "hwp-sn-usw2-transit-06"
#       subnet_ip             = "10.200.1.128/26"
#       subnet_region         = "us-west2"
#       subnet_private_access = "true"
#       subnet_flow_logs      = "true"
#     }
#   ]
# }

# ################ VPC Peering ###########
# module "host_transit_vpc_peering" {
#   source                     = "../../modules/vpc-peering"
#   prefix                     = "peering"
#   local_network              = module.US_untrust_VPC.network_self_link
#   peer_network               = module.US_trust_VPC.network_self_link
#   export_local_custom_routes = true
#   export_peer_custom_routes  = true
# }

# module "transit_host_vpc_peering" {
#   source                     = "../../modules/vpc-peering"
#   prefix                     = "peering"
#   local_network              = module.US_trust_VPC.network_self_link
#   peer_network               = module.US_untrust_VPC.network_self_link
#   export_local_custom_routes = true
#   export_peer_custom_routes  = true
# }
