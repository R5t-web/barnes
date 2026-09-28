# module "web_umig" {


#   source = "../../modules/umig"


#   name    = "web-umig"


#   project = "terraform-practice-476512"


#   zone    = "us-west2-a"


#   instances = [

#     module.web_vm_01.instance_self_link,

#     module.web_vm_02.instance_self_link

#   ]


#   named_ports = [

#     {

#       name = "http"

#       port = 80

#     }

#   ]

# }