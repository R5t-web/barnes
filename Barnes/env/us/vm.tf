# module "web_vm_01" {


#   source = "../../modules/gce"


#   project_id = "terraform-practice-476512"


#   zone = "us-west2-a"


#   name = "web-vm-01"


#   machine_type = "e2-micro"


#   image = "debian-cloud/debian-12"


#   subnet = "hwp-sn-usw2-transit-01"


#   tags = [

#     "web-server"

#   ]


#   metadata = {

#     startup-script = <<-EOT

#       #!/bin/bash

#       apt-get update

#       apt-get install -y nginx

#       echo "Hello from VM1" > /var/www/html/index.html

#       systemctl restart nginx

#     EOT

#   }


#   service_account_scopes = [

#     "cloud-platform"

#   ]

# }


# module "web_vm_02" {


#   source = "../../modules/gce"


#   project_id = "terraform-practice-476512"


#   zone = "us-west2-a"


#   name = "web-vm-02"


#   machine_type = "e2-micro"


#   image = "debian-cloud/debian-12"


#   subnet = "hwp-sn-usw2-transit-01"


#   tags = [

#     "web-server"

#   ]


#   metadata = {

#     startup-script = <<-EOT

#       #!/bin/bash

#       apt-get update

#       apt-get install -y nginx

#       echo "Hello from VM2" > /var/www/html/index.html

#       systemctl restart nginx

#     EOT

#   }


#   service_account_scopes = [

#     "cloud-platform"

#   ]

# }