# module "web_umig_a" {


#   source = "../modules/umig"


#   project = module.network_host_project.project_id


#   name = "web-umig-a"


#   zone = "us-east4-a"


#   instances = [

#     module.web1.instance_self_link

#   ]


#   named_ports = [

#     {

#       name = "http"

#       port = 80

#     }

#   ]


# }
 
# module "web_umig_b" {


#   source = "../modules/umig"


#   project = module.network_host_project.project_id


#   name = "web-umig-b"


#   zone = "us-east4-b"


#   instances = [

#     module.web2.instance_self_link

#   ]


#   named_ports = [

#     {

#       name = "http"

#       port = 80

#     }

#   ]


# }
 