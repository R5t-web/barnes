# # module "internal_lb" {


# #   source = "../../modules/ilb"


# #   project_id = "terraform-practice-476512"


# #   name = "trust-ilb"


# #   region = "us-west2"


# #   network = "hwp-vpc-test-prd-01"


# #   subnetwork = "hwp-sn-usw2-transit-01"


# #   instance_group = module.web_umig.self_link


# #   port = "80"


# #   health_check_port = 80

# # }
# #################################################################

# module "internal_lb" {


#   source = "../../modules/ilb"


#   project_id = "terraform-practice-476512"


#   name = "trust-ilb"


#   region = "us-west2"


#   network = "hwp-vpc-test-prd-01"


#   subnetwork = "hwp-sn-usw2-transit-01"


#   backend_groups = [


#     module.neg_a.self_link,


#     module.neg_b.self_link


#   ]

# }