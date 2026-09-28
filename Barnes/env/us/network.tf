module "US_untrust_VPC" {
  source                                 = "../../modules/vpc"
  network_name                           = "hwp-vpc-test-prd-01"
  auto_create_subnetworks                = false
  routing_mode                           = "GLOBAL"
  project_id                             = "terraform-practice-476512"
  delete_default_internet_gateway_routes = true
}
module "US_untrust_vpc_subnets" {
  depends_on   = [module.US_untrust_VPC]
  source       = "../../modules/subnets"
  project_id   = "terraform-practice-476512"
  network_name = "hwp-vpc-test-prd-01"

  subnets = [
    {
      subnet_name           = "hwp-sn-usw2-transit-01"
      subnet_ip             = "10.200.1.0/25"
      subnet_region         = "us-west2"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    }
  ]
}

# module "US_trust_VPC" {
#   source                                 = "../../modules/vpc"
#   network_name                           = "hwp-vpc-test-prd-02"
#   auto_create_subnetworks                = false
#   routing_mode                           = "GLOBAL"
#   project_id                             = "terraform-practice-476512"
#   delete_default_internet_gateway_routes = true
# }
# module "US_trust_vpc_subnets" {
#   depends_on   = [module.US_trust_VPC]
#   source       = "../../modules/subnets"
#   project_id   = "terraform-practice-476512"
#   network_name = "hwp-vpc-test-prd-02"

#   subnets = [
#     {
#       subnet_name           = "hwp-sn-usw2-transit-02"
#       subnet_ip             = "10.200.0.128/25"
#       subnet_region         = "us-west2"
#       subnet_private_access = "true"
#       subnet_flow_logs      = "true"
#     }
#   ]
# }

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
